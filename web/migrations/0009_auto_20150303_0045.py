# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0008_auto_20150303_0042'),
    ]

    operations = [
        migrations.AlterField(
            model_name='foro',
            name='tema',
            field=models.CharField(max_length=30),
            preserve_default=True,
        ),
    ]
