# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0016_auto_20150304_0113'),
    ]

    operations = [
        migrations.AddField(
            model_name='comentario',
            name='responder',
            field=models.ForeignKey(blank=True, to='web.comentario', null=True),
            preserve_default=True,
        ),
    ]
