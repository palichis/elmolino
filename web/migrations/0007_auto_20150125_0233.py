# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0006_auto_20150125_0225'),
    ]

    operations = [
        migrations.AlterField(
            model_name='carrito',
            name='producto',
            field=models.ForeignKey(db_column=b'product_id', blank=True, to='web.producto', null=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='carrito',
            name='servicio',
            field=models.ForeignKey(db_column=b'servicio_id', blank=True, to='web.servicio', null=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='cotizacion_detalle',
            name='cotizacion',
            field=models.ForeignKey(db_column=b'cotizacion_id', blank=True, to='web.cotizacion', null=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='cotizacion_detalle',
            name='servicio',
            field=models.ForeignKey(db_column=b'servicio_id', blank=True, to='web.servicio', null=True),
            preserve_default=True,
        ),
    ]
