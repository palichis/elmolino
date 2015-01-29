# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0002_auto_20150128_2051'),
    ]

    operations = [
        migrations.CreateModel(
            name='siguenos',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('red', models.CharField(max_length=5000)),
                ('url', models.CharField(max_length=5000)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.RemoveField(
            model_name='elmolino',
            name='nombre',
        ),
        migrations.RemoveField(
            model_name='elmolino',
            name='texto',
        ),
        migrations.AddField(
            model_name='elmolino',
            name='correo',
            field=models.CharField(default=b'', max_length=5000),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='elmolino',
            name='direccion',
            field=models.CharField(default=b'', max_length=5000),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='elmolino',
            name='historia',
            field=models.CharField(default=b'', max_length=5000),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='elmolino',
            name='mision',
            field=models.CharField(default=b'', max_length=5000),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='elmolino',
            name='telefono',
            field=models.CharField(default=b'', max_length=5000),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='elmolino',
            name='vision',
            field=models.CharField(default=b'', max_length=5000),
            preserve_default=True,
        ),
    ]
