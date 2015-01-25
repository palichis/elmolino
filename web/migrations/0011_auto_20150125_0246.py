# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0010_auto_20150125_0245'),
    ]

    operations = [
        migrations.AlterField(
            model_name='menu',
            name='padre',
            field=models.ForeignKey(blank=True, to='web.menu', null=True),
            preserve_default=True,
        ),
    ]
