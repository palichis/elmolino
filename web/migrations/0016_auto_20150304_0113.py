# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0015_menu_peso'),
    ]

    operations = [
        migrations.RenameField(
            model_name='menu',
            old_name='peso',
            new_name='orden',
        ),
    ]
