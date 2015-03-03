# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0011_auto_20150303_0050'),
    ]

    operations = [
        migrations.AlterField(
            model_name='comentario',
            name='tema',
            field=models.CharField(max_length=20),
            preserve_default=True,
        ),
    ]
