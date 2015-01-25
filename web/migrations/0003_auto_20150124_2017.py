# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0002_auto_20150124_2007'),
    ]

    operations = [
        migrations.CreateModel(
            name='galeria',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('imagen', models.FileField(upload_to=b'galeria')),
                ('activa', models.BooleanField(default=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.AlterField(
            model_name='producto',
            name='imagen',
            field=models.FileField(upload_to=b'productos'),
            preserve_default=True,
        ),
    ]
