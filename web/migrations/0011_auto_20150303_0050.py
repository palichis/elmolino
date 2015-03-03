# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0010_auto_20150303_0046'),
    ]

    operations = [
        migrations.RenameField(
            model_name='foro',
            old_name='comentario',
            new_name='ccomentario',
        ),
        migrations.AddField(
            model_name='comentario',
            name='cforo',
            field=models.ForeignKey(blank=True, to='web.foro', null=True),
            preserve_default=True,
        ),
    ]
