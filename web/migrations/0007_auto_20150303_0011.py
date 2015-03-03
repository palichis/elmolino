# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0006_auto_20150212_1658'),
    ]

    operations = [
        migrations.AddField(
            model_name='foro',
            name='coment_small',
            field=models.CharField(default='', max_length=250),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='foro',
            name='comentario',
            field=models.CharField(max_length=1000),
            preserve_default=True,
        ),
    ]
