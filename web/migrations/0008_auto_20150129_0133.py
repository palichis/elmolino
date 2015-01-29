# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0007_comentario_cusuario'),
    ]

    operations = [
        migrations.AlterField(
            model_name='comentario',
            name='descripcion',
            field=models.CharField(max_length=1000),
            preserve_default=True,
        ),
    ]
