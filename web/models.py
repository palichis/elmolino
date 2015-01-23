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


