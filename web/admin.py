from django import forms
from django.contrib import admin
from web.models import *
# Register your models here.

admin.site.register(galeria)
admin.site.register(carrito)
admin.site.register(cliente)
admin.site.register(variedad)
admin.site.register(cat_producto)

class productoform(forms.ModelForm):
    detalle = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    class Meta:
        fields = ['codigo','nombre','nombre_comun','nombre_cientifico','altura_maxima','agua','sol','crecimiento','detalle','costo','cantidad','imagen','variedad','cat_producto']
        model = producto
class productoadmin(admin.ModelAdmin):
    form = productoform
    
admin.site.register(producto, productoadmin)
admin.site.register(cat_servicio)

class servicioform(forms.ModelForm):
    descripcion = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    class Meta:
        model = servicio
        fields = ['codigo','nombre','costo','duracion','descripcion','cat_servicio']
class servicioadmin(admin.ModelAdmin):
    form = servicioform

admin.site.register(servicio, servicioadmin)

class detalle_cotizacionInline(admin.TabularInline):
    model = cotizacion_detalle

class cotizacionAdmin(admin.ModelAdmin):
    inlines = (detalle_cotizacionInline,)

admin.site.register(cotizacion, cotizacionAdmin)
#admin.site.register(cotizacion_detalle)


admin.site.register(cat_foro)

class foroform(forms.ModelForm):
    coment_small = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 100}) )
    ccomentario = forms.CharField( widget=forms.Textarea(attrs={'rows': 15, 'cols': 150}) )
    class Meta:
        fields = ['tema','coment_small','ccomentario','cat_foro']
        model = foro
class foroadmin(admin.ModelAdmin):
    form = foroform
admin.site.register(foro, foroadmin)


class comentarioform(forms.ModelForm):
    descripcion = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    class Meta:
        fields = ['tema','descripcion']
        model = comentario
class comentarioadmin(admin.ModelAdmin):
    form = comentarioform
admin.site.register(comentario,comentarioadmin)

admin.site.register(menu)
admin.site.register(oferta) 
admin.site.register(siguenos) 


class elmolinoform(forms.ModelForm):
    historia = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    mision = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    vision = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    direccion = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    mapa = forms.CharField( widget=forms.Textarea(attrs={'rows': 5, 'cols': 150}) )
    class Meta:
        model = elmolino
        fields = ['historia','mision','vision','direccion','telefono','correo','mapa']
class elmolinoadmin(admin.ModelAdmin):
    form = elmolinoform

admin.site.register(elmolino, elmolinoadmin)
