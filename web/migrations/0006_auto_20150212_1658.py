# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0005_auto_20150212_1356'),
    ]

    operations = [
        migrations.AddField(
            model_name='cotizacion_detalle',
            name='total',
            field=models.FloatField(default=0),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='cotizacion_detalle',
            name='cantidad',
            field=models.IntegerField(),
            preserve_default=True,
        ),
    ]
