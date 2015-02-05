# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0003_auto_20150205_1845'),
    ]

    operations = [
        migrations.RenameField(
            model_name='carrito',
            old_name='valor_total',
            new_name='cantidad',
        ),
    ]
