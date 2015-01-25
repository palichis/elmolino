# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0007_auto_20150125_0233'),
    ]

    operations = [
        migrations.AddField(
            model_name='menu',
            name='nivel',
            field=models.IntegerField(default=1),
            preserve_default=False,
        ),
    ]
