# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0008_auto_20150129_0133'),
    ]

    operations = [
        migrations.AlterField(
            model_name='comentario',
            name='fecha',
            field=models.DateTimeField(),
            preserve_default=True,
        ),
    ]
