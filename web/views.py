from django.shortcuts import render
from django.shortcuts import render_to_response
from web.models import *
# Create your views here.

def slide():
    img = galeria.objects.filter(activa=True)
    sl = '<ul id="slider1">'
    for imagen in img:
        sl = sl + '<li><img src="/static/%s" alt=""></li>'%str(imagen.imagen)
    sl = sl + '</ul>'
    return sl

def menus(objeto):
    barra = ''
    menu_db = objeto
    if menu_db:
        for padre in menu_db:
            barra = barra + "<li class='has-sub'><a href='%s'><span>%s</span></a>"%(padre.url,padre.nombre)
            sub_menu = menu.objects.filter(padre=padre.id)
            if sub_menu:
                barra = barra + '<ul>'
                barra1 = barra + menus(sub_menu)
                barra =  barra1 + '</ul>'
            barra = barra + '</li>'
    return barra
    

def home(request):
    html = slide()
    men = menus(menu.objects.filter(nivel = 1))
    return render_to_response('home.html',{'slide':html, 'menu':men})
