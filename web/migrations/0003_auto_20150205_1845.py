# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0002_auto_20150205_1741'),
    ]

    operations = [
        migrations.AlterField(
            model_name='carrito',
            name='codigo',
            field=models.CharField(max_length=20),
            preserve_default=True,
        ),
    ]
