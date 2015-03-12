from django import forms
from web.models import *
from django.contrib import admin


class elmolinoform(forms.ModelForm):
    historia = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    mision = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    vision = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    direccion = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    mapa = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    class Meta:
        model = elmolino
        fields = ['historia','mision','vision','direccion','telefono','correo','mapa']


class productoform(forms.ModelForm):
    detalle = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    class Meta:
        fields = ['codigo','nombre','nombre_comun','nombre_cientifico','altura_maxima','agua','sol','crecimiento','detalle','costo','cantidad','imagen','variedad','cat_producto']
        model = producto

class servicioform(forms.ModelForm):
    descripcion = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    class Meta:
        model = servicio
        fields = ['codigo','nombre','costo','duracion','descripcion','cat_servicio']

class detalle_cotizacionInline(admin.TabularInline):
    model = cotizacion_detalle

class foroform(forms.ModelForm):
    coment_small = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 100}) )
    ccomentario = forms.CharField( widget=forms.Textarea(attrs={'rows': 15, 'cols': 150}) )
    class Meta:
        fields = ['tema','coment_small','ccomentario','cat_foro']
        model = foro


class comentarioform(forms.ModelForm):
    descripcion = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    class Meta:
        fields = ['tema','descripcion','responder']
        model = comentario

class elmolinoform(forms.ModelForm):
    historia = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    mision = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    vision = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    direccion = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    mapa = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    class Meta:
        model = elmolino
        fields = ['historia','mision','vision','direccion','telefono','correo','mapa']

class clienteform(forms.ModelForm):
    #nombre = forms.CharField(max_length=20)
    #apellido = forms.CharField(max_length=20)
    #correo = forms.CharField(max_length=30)
    #cedula = forms.CharField(max_length=10)
    #telefono = forms.CharField(max_length=10)
    #usuario = forms.ForeignKey(User)
    class Meta:
        model = cliente
        fields = ['nombre','apellido','correo','cedula','telefono']
