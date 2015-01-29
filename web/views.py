from django.shortcuts import render
from django.shortcuts import render_to_response
from web.models import *
# Create your views here.

def slide():
    img = galeria.objects.filter(activa=True)
    sl = '<ul id="slider1">'
    for imagen in img:
        sl = sl + '<li><img src="/static/%s" alt=""  height="252" width="1024"></li>'%str(imagen.imagen)
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

def categorias(objeto):
    import pdb
    #pdb.set_trace()
    html = '<table style="width:100%" ><tr>'
    i = 1
    for cat in objeto:
        html = html + '<td style="width:25%'
        html = html+ '; text-align:center"><a href="?cat=%s"><h3>%s</h3><img src="/static/%s" height="200" width="200"></a></td>'%(cat.nombre,cat.nombre,cat.imagen_cat)
        i = i + 1
        if i%4.0 == 0:
            html = html + '</tr><tr>'
    html = html + '</tr></table>'
    return html

def vivero(request):
    coment = ''
    hist = elmolino.objects.all()[0]
    redes = siguenos.objects.all()
    men = menus(menu.objects.filter(nivel = 1))
    if 'cat' in request.GET:
        cprod = cat_producto.objects.filter(nombre = request.GET['cat'])
        prod = producto.objects.filter(cat_producto = cprod[0].id).order_by('nombre')
        if prod:
            if 'id' in request.GET:
                p_producto = producto.objects.filter(id = request.GET['id'])[0]
            else:
                p_producto = prod[0]
            coment = comentario.objects.filter(cproducto = p_producto.id)
            return render_to_response('producto.html',{'menu':men, 'lista':prod, 'producto': p_producto, 'categoria': request.GET['cat'],'foother': hist, 'red':redes, 'comentario':coment})

    cat = categorias(cat_producto.objects.filter(tipo = 'VI'))
    return render_to_response('vivero.html',{'menu':men, 'categoria':cat,'foother': hist, 'red':redes})

def home(request):
    html = slide()
    men = menus(menu.objects.filter(nivel = 1))
    hist = elmolino.objects.all()[0]
    ofer = oferta.objects.all()
    redes = siguenos.objects.all()
    return render_to_response('home.html',{'slide':html, 'menu':men, 'content': hist.historia, 'title': 'historia', 'img': ofer, 'foother': hist, 'red':redes})

