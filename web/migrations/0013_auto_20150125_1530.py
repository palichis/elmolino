# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0012_elmolino'),
    ]

    operations = [
        migrations.AlterField(
            model_name='elmolino',
            name='texto',
            field=models.CharField(max_length=500),
            preserve_default=True,
        ),
    ]
