# -*- coding: utf-8 -*-
from django.shortcuts import render
from django.shortcuts import render_to_response
from web.models import *
from django.contrib.auth.models import User,Group
from django.contrib.auth import logout
from django.http import HttpResponseRedirect
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm, UserChangeForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login
from django.core.mail import send_mail
import pdb
from django.contrib.auth.forms import *
from web.forms import *
from django.core.mail import send_mail
from django.core.mail import EmailMessage
from django.template.loader import render_to_string, get_template
from django.template import Context

# Create your views here.

def slide():
    img = galeria.objects.filter(activa=True)
    sl = '<ul id="slider1">'
    for imagen in img:
        sl = sl + '<li><img src="/static/%s" alt=""  height="252" width="1024"></li>'%str(imagen.imagen)
    sl = sl + '</ul>'
    return sl

def menus(objeto,request):
    #pdb.set_trace()
    barra = ''
    menu_db = objeto
    #if request.user.is_authenticated():
    #    return ""
    if menu_db:
        for padre in menu_db:
            if request.user.is_authenticated() and padre.nombre == 'Ingresar':
                break
            barra = barra + "<li class='has-sub'><a href='%s'><span>%s</span></a>"%(padre.url,padre.nombre)
            if request.user.is_authenticated():
                grupo = Group.objects.all()
            sub_menu = menu.objects.filter(padre=padre.id).order_by('orden')
            if sub_menu:
                barra = barra + '<ul>'
                barra1 = barra + menus(sub_menu,request)
                barra =  barra1 + '</ul>'
            barra = barra + '</li>'
    return barra


def fcomentario():
    html = '''
    <h3>Deja tu comentario</h3>
    <form id="formulario" action='' method='post'>
    <input id="tema"  type="text" value="" name="tema" maxlength="20"><br>
    <textarea id="edit-comment" name="comment" rows="15" cols="60"></textarea><br>
    <input type='submit' id="submit" value='Agregar' name="actualizar"/>
    </form><p>
    <strong>Comentarios</strong></p>
    '''
    return html

def general(request):
    hist = elmolino.objects.all()[0]
    redes = siguenos.objects.all()
    grupo = Group.objects.filter(name="all")
    men = menus(menu.objects.filter(nivel = 1,acceso=grupo).order_by('orden'),request)
    if request.user.is_staff:
        gadmin = Group.objects.filter(name="admin")
        men = men + menus(menu.objects.filter(nivel = 1,acceso=gadmin).order_by('orden'),request)
    if request.user.is_authenticated():
        gadmin = Group.objects.filter(name="registrado")
        men = men + menus(menu.objects.filter(nivel = 1,acceso=gadmin).order_by('orden'),request)
    return hist,redes,men

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

def productos(object):
    request = object
    hist,redes,men = general(request)
    coment = ''
    agregar = ''
    if request.user.is_authenticated():
        mensaj = fcomentario()
    else:
        mensaj = ""

    if 'cat' in request.GET:
        cprod = cat_producto.objects.filter(nombre = request.GET['cat'])
        prod = producto.objects.filter(cat_producto = cprod[0].id).order_by('nombre')
        if prod:
            if 'id' in request.GET:
                p_producto = producto.objects.filter(id = request.GET['id'])[0]
            else:
                p_producto = prod[0]
            if request.user.is_authenticated():
                agregar = "<a href=%s?cat=%s&id=%s&agregar=true><img src='/static/img/mascarrito.png'></a>"%(request.path,request.GET['cat'],p_producto.id)
            coment = comentario.objects.filter(cproducto = p_producto.id).order_by("-id")
            if request.method == 'POST':
                #foro_obj = foro.objects.filter(id = request.GET['id'])[0]
                mensaje = comentario()
                mensaje.tema = request.POST['tema']
                mensaje.descripcion = request.POST['comment']
                mensaje.cproducto = p_producto
                mensaje.cusuario = request.user
                mensaje.save()
            if 'agregar' in request.GET:
                carto = carrito.objects.filter(producto = p_producto.id, usuario = request.user)
                if carto:
                    carto[0].cantidad = carto[0].cantidad + 1
                    carto[0].total = (carto[0].cantidad) * p_producto.costo
                    carto[0].save()
                else:
                    mascar = carrito()
                    mascar.codigo  = request.user.id
                    mascar.cantidad = 1
                    mascar.usuario = request.user
                    mascar.producto = p_producto
                    mascar.total = 1 * p_producto.costo
                    mascar.save()
            return render_to_response('producto.html',{'menu':men, 'lista':prod, 'producto': p_producto, 'categoria': request.GET['cat'],'foother': hist, 'red':redes, 'comentario':coment, 'agregar' : agregar, 'mensaje':mensaj})


def cservicios(object):
    request = object
    hist,redes,men = general(request)
    coment = ''
    agregar = ""
    if request.user.is_authenticated():
        mensaj = fcomentario()
    else:
        mensaj = ""

    if 'cat' in request.GET:
        
        cserv = cat_servicio.objects.filter(nombre = request.GET['cat'])
        serv = servicio.objects.filter(cat_servicio = cserv[0].id).order_by('nombre')
        if serv:
            if 'id' in request.GET:
                p_servicio = servicio.objects.filter(id = request.GET['id'])[0]
            else:
                p_servicio = serv[0]
            if request.method == 'POST':
                #foro_obj = foro.objects.filter(id = request.GET['id'])[0]
                mensaje = comentario()
                mensaje.tema = request.POST['tema']
                mensaje.descripcion = request.POST['comment']
                mensaje.cservicio = p_servicio
                mensaje.cusuario = request.user
                mensaje.save()
            if request.user.is_authenticated():
                agregar = "<a href=%s?cat=%s&id=%s&agregar=true><img src='/static/img/mascarrito.png'></a>"%(request.path,request.GET['cat'],p_servicio.id)
            coment = comentario.objects.filter(cservicio = p_servicio.id).order_by("-id")
            if 'agregar' in request.GET:
                carto = carrito.objects.filter(servicio = p_servicio.id, usuario = request.user)
                if carto:
                    carto[0].cantidad = carto[0].cantidad + 1
                    carto[0].total = (carto[0].cantidad) * p_servicio.costo
                    carto[0].save()
                else:
                    mascar = carrito()
                    mascar.codigo  = request.user.id
                    mascar.cantidad = 1
                    mascar.usuario = request.user
                    mascar.servicio = p_servicio
                    mascar.total = 1 * p_servicio.costo
                    mascar.save()
            return render_to_response('servicio.html',{'menu':men, 'lista':serv, 'producto': p_servicio, 'categoria': request.GET['cat'],'foother': hist, 'red':redes, 'comentario':coment, 'agregar':agregar, 'mensaje' : mensaj})


def huerto(request):
    hist,redes,men = general(request)
    prod = productos(request)
    if prod:
        return prod
    cat = categorias(cat_producto.objects.filter(tipo = 'HU'))
    return render_to_response('vivero.html',{'menu':men, 'categoria':cat,'foother': hist, 'red':redes})
    
def vivero(request):
    import pdb
    #pdb.set_trace()
    hist,redes,men = general(request)
    prod = productos(request)
    if prod:
        return prod
    cat = categorias(cat_producto.objects.filter(tipo = 'VI'))
    return render_to_response('vivero.html',{'menu':men, 'categoria':cat,'foother': hist, 'red':redes})


def servicios(request):
    hist,redes,men = general(request)
    serv = cservicios(request)
    if serv:
        return serv
    cat = categorias(cat_servicio.objects.all())
    return render_to_response('vivero.html',{'menu':men, 'categoria':cat,'foother': hist, 'red':redes})

def home(request):
    hist,redes,men = general(request)
    html = slide()
    ofer = oferta.objects.all()
    catforo = cat_foro.objects.filter(nombre = 'noticias')[0]
    noticias = foro.objects.filter(cat_foro = catforo.id)
    if len(noticias) > 3:
        noticias[-3:]
    return render_to_response('home.html',{'slide':html, 'menu':men, 'content': noticias, 'title': 'Noticias', 'img': ofer, 'foother': hist, 'red':redes})


def entrar(request):
    hist,redes,men = general(request)
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=username, password=password)
        if user is not None:
            if user.is_active:
                login(request, user)
                return HttpResponseRedirect('/')
    else:
        formulario = AuthenticationForm()
    return render_to_response('login.html',{'menu':men, 'content': formulario, 'foother': hist, 'red':redes})

def salir(request):
    hist,redes,men = general(request)
    logout(request)
    return HttpResponseRedirect('/')

def el_molino(request):
    hist,redes,men = general(request)
    return render_to_response('elmolino.html',{'menu':men, 'content': hist, 'foother': hist, 'red':redes})


def carr(request):
    hist,redes,men = general(request)
    if request.user.is_authenticated():
        img = '/static/img/carrito.png'
        num = carrito.objects.filter(usuario = request.user.id)
        numero = 0
        for n in num:
            numero = numero + n.cantidad
    return render_to_response('carrito.html',{'imagen':img, 'numero': numero})

@login_required
def compras(request):
    if request.method == 'POST':
        print request.POST
    hist,redes,men = general(request)
    obj_car = ''
    if 'eliminar' in request.GET:
        if carrito.objects.filter(id = request.GET['eliminar']):
            obj_car = carrito.objects.get(id=request.GET['eliminar'])
        if obj_car:
            obj_car.delete()
    car = carrito.objects.filter(usuario = request.user.id)
    total = 0
    for i in car:
        total = total + i.total
    return render_to_response('compras.html',{'menu':men, 'content': car, 'foother': hist, 'red':redes, 'total':total})


def evento_carrito(request):
    if request.method == 'POST':
        print request.POST
        carr = carrito.objects.filter(usuario = request.user.id)
        if 'actualizar' in request.POST:
            for i in range(len(carr)):
                if carr[i].producto:
                    carr[i].total = float(carr[i].producto.costo) * float(request.POST['codigo'+str(carr[i].id)])
                    carr[i].cantidad = request.POST['codigo'+str(carr[i].id)]
                else:
                    carr[i].total = float(carr[i].servicio.costo) * float(request.POST['codigo'+str(carr[i].id)])
                    carr[i].cantidad = request.POST['codigo'+str(carr[i].id)]
                carr[i].save()
        if 'eliminar' in request.POST:
            carr.delete()
        if 'cotizar' in request.POST:
            total = 0
            cli = cliente.objects.filter(usuario = request.user.id)[0]
            if carr:
                for i in carr:
                    total = total + i.total
                cotiza = cotizacion()
                cotiza.costo_total = total
                cotiza.cliente = cli
                cotiza.save()
                for j in carr:
                    cotiza_det = cotizacion_detalle()
                    #pdb.set_trace()
                    cotiza_det.cantidad = j.cantidad
                    if j.producto:
                        cotiza_det.valor_unitario = j.producto.costo
                        cotiza_det.producto = j.producto
                        cotiza_det.total = float(j.producto.costo) * float(j.cantidad)
                    else:
                        cotiza_det.valor_unitario = j.servicio.costo
                        cotiza_det.servicio = j.servicio
                        cotiza_det.total = float(j.servicio.costo) * float(j.cantidad)
                    cotiza_det.cotizacion = cotiza
                    cotiza_det.save()
                detalle_obj = cotizacion_detalle.objects.filter(cotizacion = cotiza)
                ctx = {'total' : total,
                       'cliente' : cli,
                       'detalle' : detalle_obj}
                print ctx
                message = get_template('mailcotizacion.html').render(Context(ctx))
                msg = EmailMessage('Cotización Vivero "El Molino"', message, to=['palichis@solid-ec.org',"sayanguicela@hotmail.com","mvargas@totaltek.com.ec"], from_email='palichis@katarisoft.com')
                msg.content_subtype = 'html'
                msg.send()
            carr.delete()
    return HttpResponseRedirect('/compras')


def noticias(request):
    hist,redes,men = general(request)
    coment = ''
    cat_foro_obj = cat_foro.objects.filter(nombre = "noticias")
    menu_foro = foro.objects.filter(cat_foro = cat_foro_obj).order_by('-id')[0:10]
    if request.user.is_authenticated():
        mensaj = fcomentario()
    else:
        mensaj = ""
    if request.method == 'POST':
        foro_obj = foro.objects.filter(id = request.GET['id'])[0]
        mensaje = comentario()
        mensaje.tema = request.POST['tema']
        mensaje.descripcion = request.POST['comment']
        mensaje.cforo = foro_obj
        mensaje.cusuario = request.user
        mensaje.save()
    if 'id' in request.GET:
        cforo = foro.objects.filter(id = request.GET['id'])
        coment = comentario.objects.filter(cforo = request.GET['id']).order_by("-id")
        if cforo:
            return render_to_response('foro.html',{'menu':men, 'content': cforo[0], 'foother': hist, 'red':redes, 'comentario' : coment, 'mensaje' : mensaj, 'izquierda' : menu_foro})
    cforo = foro.objects.filter(cat_foro = cat_foro_obj).order_by('-id')[0:10]
    return render_to_response('foro.html',{'menu':men, 'contents': cforo, 'foother': hist, 'red':redes, 'izquierda' : menu_foro})


def foros(request):
    return True

@login_required
def usuario(request):
    hist,redes,men = general(request)
    cform = ''
    cusuario = ''
    if request.method == 'POST':
        #cform = clienteform(request.POST)
        cusuario = UserCreationForm(request.POST)
        print request.POST
        try:
            user_id = cusuario.save()
        except Exception as inst:
            print type(inst)     # the exception instance
            print inst.args      # arguments stored in .args
            print inst           # __str__ allows args to be printed directly
            #x, y = inst.args
            #print 'x =', x
            #print 'y =', y
        clform = cliente()
        clform.nombre = request.POST['nombre']
        clform.apellido = request.POST['apellido']
        clform.correo = request.POST['correo']
        clform.cedula = request.POST['cedula']
        clform.telefono = request.POST['telefono']
        clform.usuario = user_id
        clform.save()
        ctx = {'nombre' : request.POST['nombre'],
               'apellido' : request.POST['apellido'],
               'username' : request.POST['username'],
               'password1' : request.POST['password1']}
        message = get_template('mailusuario.html').render(Context(ctx))
        msg = EmailMessage('Vivero "El Molino"', message, to=[request.POST['correo'],"sayanguicela@hotmail.com","mvargas@totaltek.com.ec"], from_email='palichis@katarisoft.com')
        msg.content_subtype = 'html'
        msg.send()
        #foro_obj = foro.objects.filter(id = request.GET['id'])[0]
        #mensaje = comentario()
        #mensaje.tema = request.POST['tema']
        #mensaje.descripcion = request.POST['comment']
        #mensaje.cforo = foro_obj
        #mensaje.cusuario = request.user
        #mensaje.save()
    else:
        cform = clienteform()
        cusuario = UserCreationForm()
    
        
    return render_to_response('usuario.html',{'menu':men, 'content': cform, 'content1': cusuario, 'foother': hist, 'red':redes})
