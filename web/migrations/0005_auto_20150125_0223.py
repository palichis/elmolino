# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0004_auto_20150124_2115'),
    ]

    operations = [
        migrations.RenameField(
            model_name='cliente',
            old_name='apelido',
            new_name='apellido',
        ),
    ]
