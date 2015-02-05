from django.contrib import admin
from web.models import *
# Register your models here.

admin.site.register(galeria)
admin.site.register(carrito)
admin.site.register(cliente)
admin.site.register(variedad)
admin.site.register(cat_producto)
admin.site.register(producto)
admin.site.register(cat_servicio)
admin.site.register(servicio)

class detalle_cotizacionInline(admin.TabularInline):
    model = cotizacion_detalle

class cotizacionAdmin(admin.ModelAdmin):
    inlines = (detalle_cotizacionInline,)

admin.site.register(cotizacion, cotizacionAdmin)
#admin.site.register(cotizacion_detalle)


admin.site.register(cat_foro)
admin.site.register(foro)
admin.site.register(comentario)
admin.site.register(menu)
admin.site.register(elmolino)
admin.site.register(oferta) 
admin.site.register(siguenos) 
