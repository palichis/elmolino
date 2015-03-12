# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0014_merge'),
    ]

    operations = [
        migrations.AddField(
            model_name='menu',
            name='peso',
            field=models.SmallIntegerField(default=1),
            preserve_default=True,
        ),
    ]
