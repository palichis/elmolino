# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('web', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='carrito',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('codigo', models.FloatField(max_length=20)),
                ('fecha', models.DateField()),
                ('valor_total', models.FloatField(max_length=20)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='cat_foro',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('fecha', models.DateField()),
                ('nombre', models.CharField(max_length=20)),
                ('descripcion', models.CharField(max_length=20)),
                ('cat_foro_padre', models.ForeignKey(to='web.cat_foro')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='cat_producto',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(max_length=20)),
                ('fecha', models.DateField()),
                ('color', models.CharField(max_length=10)),
                ('especie', models.CharField(max_length=10)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='cat_servicio',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(max_length=10)),
                ('codigo', models.CharField(max_length=5)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='cliente',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(max_length=20)),
                ('apelido', models.CharField(max_length=20)),
                ('correo', models.CharField(max_length=10)),
                ('cedula', models.CharField(max_length=10)),
                ('telefono', models.CharField(max_length=10)),
                ('usuario', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='comentario',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('tema', models.CharField(max_length=10)),
                ('fecha', models.DateField()),
                ('descripcion', models.CharField(max_length=200)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='cotizacion',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('costo_total', models.FloatField(max_length=20)),
                ('fecha', models.DateField()),
                ('cliente', models.ForeignKey(to='web.cliente')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='cotizacion_detalle',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('cantidad', models.FloatField()),
                ('valor_unitario', models.FloatField()),
                ('cotizacion', models.ForeignKey(to='web.cotizacion', db_column=b'cotizacion_id')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='foro',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('fecha', models.DateField()),
                ('tema', models.CharField(max_length=20)),
                ('comentario', models.CharField(max_length=200)),
                ('cat_foro', models.ForeignKey(to='web.cat_foro', db_column=b'cat_foro_id')),
                ('usuario', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='producto',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('codigo', models.CharField(max_length=5)),
                ('nombre_comun', models.CharField(max_length=20)),
                ('nombre_cientifico', models.CharField(max_length=20)),
                ('familia', models.CharField(max_length=10)),
                ('origen', models.CharField(max_length=10)),
                ('detalle', models.CharField(max_length=200)),
                ('costo', models.FloatField()),
                ('cantidad', models.FloatField()),
                ('imagen', models.FileField(max_length=20, upload_to=b'')),
                ('cat_producto', models.ForeignKey(to='web.cat_producto')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='servicio',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('codigo', models.CharField(max_length=5)),
                ('nombre', models.CharField(max_length=20)),
                ('costo', models.FloatField(max_length=20)),
                ('tiempo', models.DateTimeField()),
                ('descripcion', models.CharField(max_length=200)),
                ('cat_servicio', models.ForeignKey(to='web.cat_servicio')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='variedad',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(max_length=20)),
                ('origen', models.CharField(max_length=20)),
                ('situacion', models.CharField(max_length=20)),
                ('cultivo', models.CharField(max_length=20)),
                ('poda', models.CharField(max_length=20)),
                ('multiplicacion', models.CharField(max_length=20)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.DeleteModel(
            name='usuario',
        ),
        migrations.AddField(
            model_name='producto',
            name='variedad',
            field=models.ForeignKey(to='web.variedad'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='cotizacion_detalle',
            name='producto',
            field=models.ForeignKey(to='web.producto', db_column=b'product_id'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='cotizacion_detalle',
            name='servicio',
            field=models.ForeignKey(to='web.servicio', db_column=b'servicio_id'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='cat_foro',
            name='cliente',
            field=models.ForeignKey(to='web.cliente'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='carrito',
            name='producto',
            field=models.ForeignKey(to='web.producto', db_column=b'product_id'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='carrito',
            name='servicio',
            field=models.ForeignKey(to='web.servicio', db_column=b'servicio_id'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='carrito',
            name='usuario',
            field=models.ForeignKey(to=settings.AUTH_USER_MODEL),
            preserve_default=True,
        ),
    ]
