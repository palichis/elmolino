# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0005_siguenos_imagen'),
    ]

    operations = [
        migrations.AddField(
            model_name='comentario',
            name='cproducto',
            field=models.ForeignKey(to='web.producto', null=True),
            preserve_default=True,
        ),
    ]
