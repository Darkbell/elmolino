from django.shortcuts import render
from django.shortcuts import render_to_response
from web.models import *
from django.contrib.auth.models import User,Group
from django.contrib.auth import logout
from django.http import HttpResponseRedirect
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm, UserChangeForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login

# Create your views here.

def slide():
    img = galeria.objects.filter(activa=True)
    sl = '<ul id="slider1">'
    for imagen in img:
        sl = sl + '<li><img src="/static/%s" alt=""  height="252" width="1024"></li>'%str(imagen.imagen)
    sl = sl + '</ul>'
    return sl

def menus(objeto,request):
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
            sub_menu = menu.objects.filter(padre=padre.id)
            if sub_menu:
                barra = barra + '<ul>'
                barra1 = barra + menus(sub_menu,request)
                barra =  barra1 + '</ul>'
            barra = barra + '</li>'
    return barra

def general(request):
    hist = elmolino.objects.all()[0]
    redes = siguenos.objects.all()
    grupo = Group.objects.filter(name="all")
    men = menus(menu.objects.filter(nivel = 1,acceso=grupo),request)
    if request.user.is_authenticated():
        gadmin = Group.objects.filter(name="registrado")
        men = men + menus(menu.objects.filter(nivel = 1,acceso=gadmin),request)
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
    if 'cat' in request.GET:
        cprod = cat_producto.objects.filter(nombre = request.GET['cat'])
        prod = producto.objects.filter(cat_producto = cprod[0].id).order_by('nombre')
        if prod:
            if 'id' in request.GET:
                p_producto = producto.objects.filter(id = request.GET['id'])[0]
            else:
                p_producto = prod[0]
            if request.user.is_authenticated():
                agregar = "<a href=%s?cat=%s&id=%s&agregar=true>agregar carrito</a>"%(request.path,request.GET['cat'],p_producto.id)
            coment = comentario.objects.filter(cproducto = p_producto.id)
            if 'agregar' in request.GET:
                carto = carrito.objects.filter(producto = p_producto.id, usuario = request.user)
                if carto:
                    carto[0].cantidad = carto[0].cantidad + 1
                    carto[0].save()
                else:
                    mascar = carrito()
                    mascar.codigo  = request.user.id
                    mascar.cantidad = 1
                    mascar.usuario = request.user
                    mascar.producto = p_producto
                    mascar.save()
            return render_to_response('producto.html',{'menu':men, 'lista':prod, 'producto': p_producto, 'categoria': request.GET['cat'],'foother': hist, 'red':redes, 'comentario':coment, 'agregar' : agregar})


def cservicios(object):
    request = object
    hist,redes,men = general(request)
    coment = ''
    if 'cat' in request.GET:
        
        cserv = cat_servicio.objects.filter(nombre = request.GET['cat'])
        serv = servicio.objects.filter(cat_servicio = cserv[0].id).order_by('nombre')
        if serv:
            if 'id' in request.GET:
                p_servicio = servicio.objects.filter(id = request.GET['id'])[0]
            else:
                p_servicio = serv[0]
            if request.user.is_authenticated():
                agregar = "<a href=%s?cat=%s&id=%s&agregar=true>agregar carrito</a>"%(request.path,request.GET['cat'],p_servicio.id)
            coment = comentario.objects.filter(cservicio = p_servicio.id)
            if 'agregar' in request.GET:
                carto = carrito.objects.filter(servicio = p_servicio.id, usuario = request.user)
                if carto:
                    carto[0].cantidad = carto[0].cantidad + 1
                    carto[0].save()
                else:
                    mascar = carrito()
                    mascar.codigo  = request.user.id
                    mascar.cantidad = 1
                    mascar.usuario = request.user
                    mascar.servicio = p_servicio
                    mascar.save()
            return render_to_response('servicio.html',{'menu':men, 'lista':serv, 'producto': p_servicio, 'categoria': request.GET['cat'],'foother': hist, 'red':redes, 'comentario':coment, 'agregar':agregar})


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
    print redes
    html = slide()
    ofer = oferta.objects.all()
    catforo = cat_foro.objects.filter(nombre = 'noticias')[0]
    noticias = foro.objects.filter(cat_foro = catforo.id)
    if len(noticias) > 3:
        noticias[-3:]
    print noticias
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
    hist,redes,men = general(request)
    obj_car = ''
    if 'eliminar' in request.GET:
        if carrito.objects.filter(id = request.GET['eliminar']):
            obj_car = carrito.objects.get(id=request.GET['eliminar'])
        if obj_car:
            obj_car.delete()
    car = carrito.objects.filter(usuario = request.user.id)
    return render_to_response('compras.html',{'menu':men, 'content': car, 'foother': hist, 'red':redes})
