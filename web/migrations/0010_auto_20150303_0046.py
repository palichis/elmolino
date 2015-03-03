# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0009_auto_20150303_0045'),
    ]

    operations = [
        migrations.AlterField(
            model_name='foro',
            name='comentario',
            field=models.CharField(max_length=5000),
            preserve_default=True,
        ),
    ]
