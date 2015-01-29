# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0004_elmolino_mapa'),
    ]

    operations = [
        migrations.AddField(
            model_name='siguenos',
            name='imagen',
            field=models.ImageField(default=b'', upload_to=b'red'),
            preserve_default=True,
        ),
    ]
