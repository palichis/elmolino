# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0003_auto_20150128_2331'),
    ]

    operations = [
        migrations.AddField(
            model_name='elmolino',
            name='mapa',
            field=models.CharField(default=b'', max_length=5000),
            preserve_default=True,
        ),
    ]
