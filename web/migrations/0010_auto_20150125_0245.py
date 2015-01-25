# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0009_auto_20150125_0242'),
    ]

    operations = [
        migrations.AlterField(
            model_name='menu',
            name='nivel',
            field=models.SmallIntegerField(null=True, blank=True),
            preserve_default=True,
        ),
    ]
