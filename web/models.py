from django.db import models

# Create your models here.

class producto(models.Model):
	codigo = models.CharField(max_length=10)
        nombre_comun = models.CharField(max_length=20)
	nombre_cientifico = models.CharField(max_length=20)
	familia = models.CharField(max_length=10)
	origen = models.CharField(max_length=10)
	detalle = models.CharField(max_length=200)
	costo = models.FloatField()
	cantidad = models.FloatField()
	imagen = models.CharField(max_length=20)


class cat_producto(models.Model):
	nombre = models.CharField(max_length=20)
	fecha = models.DateField()
	color = models.CharField(max_length=10)
	especie = models.CharField(max_length=10)

class variedad(models.Model): 
	nombre = models.CharField(max_length=20)
	origen = models.CharField(max_length=20)
	situacion = models.CharField(max_length=20)
	cultivo = models.CharField(max_length=20)
	poda = models.CharField(max_length=20)
        multiplicacion = models.CharField(max_length=20)

class servicio(models.Model): 
	nombre = models.CharField(max_length=20)
	costo = models.FloatField(max_length=20)
	tiempo = models.DateTimeField(max_length=20)
	descripcion = models.CharField(max_length=200)

class carrito(models.Model): 
	fecha = models.DateField()
	valor_total = models.FloatField(max_length=20)
	
class cotizacion(models.Model): 
	costo_total = models.FloatField(max_length=20)
	fecha = models.DateField()
	
class cotizacion_detalle(models.Model): 
	cantidad = models.FloatField(max_length=20)
	valor_unitario= models.FloatField(max_length=20)
	
class foro(models.Model): 
	fecha = models.DateField(max_length=20)
	tema = models.CharField(max_length=20)
	descripcion = models.CharField(max_length=200)

class categoria_foro(models.Model): 
	fecha = models.DateField(max_length=20)
	nombre = models.CharField(max_length=20)
	
class comentario(models.Model): 
	fecha = models.DateField(max_length=20)
	descripcion = models.CharField(max_length=200)
