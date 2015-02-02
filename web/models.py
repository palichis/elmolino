from django.db import models
from django.contrib.auth.models import User,Group

# Create your models here.

class cliente(models.Model):
	nombre = models.CharField(max_length=20)
	apellido = models.CharField(max_length=20)
	correo = models.CharField(max_length=30)
	cedula = models.CharField(max_length=10)
	telefono = models.CharField(max_length=10)
	usuario = models.ForeignKey(User)
	def __unicode__(self):
		return "%s %s"%(self.nombre,self.apellido)


class variedad(models.Model): 
	nombre = models.CharField(max_length=20)
	origen = models.CharField(max_length=20, null=True, blank=True)
	situacion = models.CharField(max_length=20, null=True, blank=True)
	cultivo = models.CharField(max_length=20, null=True, blank=True)
	poda = models.CharField(max_length=20, null=True, blank=True)
        multiplicacion = models.CharField(max_length=20, null=True, blank=True)
	def __unicode__(self):
		return "%s-%s"%(self.nombre,self.origen)

tipo_p = (('VI','Vivero'),('HU','Huerto'))

class cat_producto(models.Model):
	nombre = models.CharField(max_length=20)
	imagen_cat = models.ImageField(upload_to='cat_productos', null=False, default="")
	tipo = models.CharField(max_length=2, choices=tipo_p, default='VI')
	def __unicode__(self):
		return "%s"%(self.nombre)

medida_agua = (("B","Bajo"),('M','Medio'),('A','Alto'))

class producto(models.Model):
	codigo = models.CharField(max_length=5)
	nombre = models.CharField(max_length=20)
	nombre_comun = models.CharField(max_length=20, null=True, blank=True)
	nombre_cientifico = models.CharField(max_length=20)
	#familia = models.CharField(max_length=10)
	#origen = models.CharField(max_length=10)
	altura_maxima = models.CharField(max_length=10, null=True, blank=True)
	agua = models.CharField(max_length=1, choices=medida_agua, default='B')
	sol = models.CharField(max_length=1, choices=medida_agua, default='B')
	crecimiento = models.CharField(max_length=5, null=True, blank=True)
	detalle = models.CharField(max_length=5000)
	costo = models.FloatField()
	cantidad = models.FloatField()
	imagen = models.ImageField(upload_to='productos')
	imagen1 = models.ImageField(upload_to='productos', default="")
	imagen2 = models.ImageField(upload_to='productos', default="")
	variedad = models.ForeignKey(variedad, db_column='variedad_id')
	cat_producto = models.ForeignKey(cat_producto)
	def __unicode__(self):
		return "%s-%s"%(self.codigo,self.nombre)


class cat_servicio(models.Model):
	nombre = models.CharField(max_length=10)
        imagen_cat = models.ImageField(upload_to='servicio')
	codigo = models.CharField(max_length=5)
        
	def __unicode__(self):
		return "%s-%s"%(self.codigo,self.nombre)

class servicio(models.Model):
	codigo = models.CharField(max_length=6)
	nombre = models.CharField(max_length=20)
	costo = models.FloatField()
	duracion = models.CharField(max_length=10)
	descripcion = models.CharField(max_length=2000)
	cat_servicio = models.ForeignKey(cat_servicio)
	def __unicode__(self):
		return "%s-%s"%(self.codigo,self.nombre)

class carrito(models.Model):
	codigo = models.FloatField(max_length=20)
	fecha = models.DateField(auto_now=False, auto_now_add=True)
	valor_total = models.FloatField(max_length=20)
	usuario = models.ForeignKey(User)
	producto = models.ForeignKey(producto, db_column='product_id', null=True, blank=True)
	servicio = models.ForeignKey(servicio, db_column='servicio_id',null=True, blank=True)
	def __unicode__(self):
		return "%s %s"%(self.codigo,self.apellido)	

class cotizacion(models.Model): 
	costo_total = models.FloatField(max_length=20)
	fecha = models.DateField(auto_now=False, auto_now_add=True)
	cliente = models.ForeignKey(cliente)
	def __unicode__(self):
		return "%s %s"%(str(self.id),self.cliente.nombre)	

	
class cotizacion_detalle(models.Model): 
	cantidad = models.FloatField()
	valor_unitario= models.FloatField()
	producto = models.ForeignKey(producto, db_column='product_id', null=True, blank=True)
	servicio = models.ForeignKey(servicio, db_column='servicio_id',null=True, blank=True)
	cotizacion = models.ForeignKey(cotizacion,db_column='cotizacion_id')


class cat_foro(models.Model):
	fecha = models.DateField(auto_now=False, auto_now_add=True)
	nombre = models.CharField(max_length=20)
	descripcion = models.CharField(max_length=20)
	cliente = models.ForeignKey(User)
	cat_foro_padre = models.ForeignKey('self', null=True, blank=True)
	def __unicode__(self):
		return "%s"%(self.nombre)	

	
class foro(models.Model): 
	fecha = models.DateField(auto_now=False, auto_now_add=True)
	tema = models.CharField(max_length=20)
	comentario = models.CharField(max_length=200)
	usuario = models.ForeignKey(User)
	cat_foro = models.ForeignKey(cat_foro, db_column='cat_foro_id')
	def __unicode__(self):
		return "%s"%(self.tema)	

	
class comentario(models.Model):
	tema = models.CharField(max_length=10)
	fecha = models.DateTimeField(auto_now=False, auto_now_add=True)
	descripcion = models.CharField(max_length=1000)
	cproducto = models.ForeignKey(producto, null=True, blank=True)
        cservicio = models.ForeignKey(servicio, null=True,blank=True)
	cusuario = models.ForeignKey(User)
	def __unicode__(self):
		return "%s"%(self.tema)	

class galeria(models.Model):
	imagen = models.ImageField(upload_to='galeria')
	activa = models.BooleanField(default=True)
	def __unicode__(self):
		return str(self.id)

class menu(models.Model):
	nombre = models.CharField(max_length=10)
	url = models.CharField(max_length=10)
	padre = models.ForeignKey('self', null=True, blank=True)
        acceso = models.ForeignKey(Group, null=True, blank=True, default="")
	nivel = models.SmallIntegerField(default=1)
        
	def __unicode__(self):
		return str(self.nombre)

class elmolino(models.Model):
	historia= models.CharField(max_length=5000)
	mision = models.CharField(max_length=5000)
	vision = models.CharField(max_length=5000)
	direccion = models.CharField(max_length=5000)
	telefono = models.CharField(max_length=5000)
	correo = models.CharField(max_length=5000)
	mapa = models.CharField(max_length=5000)
	#def __unicode__(self):
	#	return str(self.)


class siguenos(models.Model):
	red = models.CharField(max_length=5000)
	url = models.CharField(max_length=5000)
	imagen = models.ImageField(upload_to='red')
	

class oferta(models.Model):
	nombre = models.CharField(max_length=1500)
	imagen = models.ImageField()
	def __unicode__(self):
		return str(self.nombre)
