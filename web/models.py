from django.db import models
from django.contrib.auth.models import User

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
	origen = models.CharField(max_length=20)
	situacion = models.CharField(max_length=20)
	cultivo = models.CharField(max_length=20)
	poda = models.CharField(max_length=20)
        multiplicacion = models.CharField(max_length=20)
	def __unicode__(self):
		return "%s-%s"%(self.nombre,self.origen)


class cat_producto(models.Model):
	nombre = models.CharField(max_length=20)
	fecha = models.DateField()
	color = models.CharField(max_length=10)
	especie = models.CharField(max_length=10)
	def __unicode__(self):
		return "%s"%(self.nombre)

    
class producto(models.Model):
	codigo = models.CharField(max_length=5)
	nombre_comun = models.CharField(max_length=20)
	nombre_cientifico = models.CharField(max_length=20)
	familia = models.CharField(max_length=10)
	origen = models.CharField(max_length=10)
	detalle = models.CharField(max_length=200)
	costo = models.FloatField()
	cantidad = models.FloatField()
	imagen = models.ImageField(upload_to='productos')
	variedad = models.ForeignKey(variedad)
	cat_producto = models.ForeignKey(cat_producto)
	def __unicode__(self):
		return "%s-%s"%(self.codigo,self.nombre_comun)


class cat_servicio(models.Model):
	nombre = models.CharField(max_length=10)
	codigo = models.CharField(max_length=5)
	def __unicode__(self):
		return "%s-%s"%(self.codigo,self.nombre)

class servicio(models.Model):
	codigo = models.CharField(max_length=5)
	nombre = models.CharField(max_length=20)
	costo = models.FloatField(max_length=20)
	tiempo = models.DateTimeField()
	descripcion = models.CharField(max_length=200)
	cat_servicio = models.ForeignKey(cat_servicio)
	def __unicode__(self):
		return "%s-%s"%(self.codigo,self.nombre)

class carrito(models.Model):
	codigo = models.FloatField(max_length=20)
	fecha = models.DateField()
	valor_total = models.FloatField(max_length=20)
	usuario = models.ForeignKey(User)
	producto = models.ForeignKey(producto, db_column='product_id', null=True, blank=True)
	servicio = models.ForeignKey(servicio, db_column='servicio_id',null=True, blank=True)
	def __unicode__(self):
		return "%s %s"%(self.codigo,self.apellido)	

class cotizacion(models.Model): 
	costo_total = models.FloatField(max_length=20)
	fecha = models.DateField()
	cliente = models.ForeignKey(cliente)
	def __unicode__(self):
		return "%s %s"%(str(self.id),self.cliente.nombre)	

	
class cotizacion_detalle(models.Model): 
	cantidad = models.FloatField()
	valor_unitario= models.FloatField()
	producto = models.ForeignKey(producto, db_column='product_id')
	servicio = models.ForeignKey(servicio, db_column='servicio_id',null=True, blank=True)
	cotizacion = models.ForeignKey(cotizacion,db_column='cotizacion_id',null=True, blank=True)


class cat_foro(models.Model):
	fecha = models.DateField()
	nombre = models.CharField(max_length=20)
	descripcion = models.CharField(max_length=20)
	cliente = models.ForeignKey(cliente)
	cat_foro_padre = models.ForeignKey('self')
	def __unicode__(self):
		return "%s"%(self.nombre)	

	
class foro(models.Model): 
	fecha = models.DateField()
	tema = models.CharField(max_length=20)
	comentario = models.CharField(max_length=200)
	usuario = models.ForeignKey(User)
	cat_foro = models.ForeignKey(cat_foro, db_column='cat_foro_id')
	def __unicode__(self):
		return "%s"%(self.tema)	

	
class comentario(models.Model):
	tema = models.CharField(max_length=10)
	fecha = models.DateField()
	descripcion = models.CharField(max_length=200)
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
	nivel = models.SmallIntegerField(null=True, blank=True)
	def __unicode__(self):
		return str(self.nombre)

class elmolino(models.Model):
	nombre = models.CharField(max_length=10)
	texto = models.CharField(max_length=1500)
	def __unicode__(self):
		return str(self.nombre)


class oferta(models.Model):
	nombre = models.CharField(max_length=1500)
	imagen = models.ImageField()
	def __unicode__(self):
		return str(self.nombre)
