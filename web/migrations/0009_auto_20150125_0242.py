# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0008_menu_nivel'),
    ]

    operations = [
        migrations.AlterField(
            model_name='menu',
            name='nivel',
            field=models.SmallIntegerField(),
            preserve_default=True,
        ),
    ]
