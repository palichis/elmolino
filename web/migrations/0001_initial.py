# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
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
                ('imagen_cat', models.ImageField(default=b'', upload_to=b'cat_productos')),
                ('tipo', models.CharField(default=b'VI', max_length=2, choices=[(b'VI', b'Vivero'), (b'HU', b'Huerto')])),
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
                ('apellido', models.CharField(max_length=20)),
                ('correo', models.CharField(max_length=30)),
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
                ('cotizacion', models.ForeignKey(db_column=b'cotizacion_id', blank=True, to='web.cotizacion', null=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='elmolino',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(max_length=10)),
                ('texto', models.CharField(max_length=1500)),
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
            name='galeria',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('imagen', models.ImageField(upload_to=b'galeria')),
                ('activa', models.BooleanField(default=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='menu',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(max_length=10)),
                ('url', models.CharField(max_length=10)),
                ('nivel', models.SmallIntegerField(null=True, blank=True)),
                ('padre', models.ForeignKey(blank=True, to='web.menu', null=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='oferta',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(max_length=1500)),
                ('imagen', models.ImageField(upload_to=b'')),
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
                ('nombre', models.CharField(default=b'', max_length=20)),
                ('nombre_comun', models.CharField(max_length=20)),
                ('nombre_cientifico', models.CharField(max_length=20)),
                ('altura_maxima', models.CharField(max_length=10)),
                ('agua', models.CharField(default=b'B', max_length=1, choices=[(b'B', b'Bajo'), (b'M', b'Medio'), (b'A', b'Alto')])),
                ('sol', models.CharField(default=b'B', max_length=1, choices=[(b'B', b'Bajo'), (b'M', b'Medio'), (b'A', b'Alto')])),
                ('crecimiento', models.CharField(default=b'', max_length=5)),
                ('detalle', models.CharField(max_length=200)),
                ('costo', models.FloatField()),
                ('cantidad', models.FloatField()),
                ('imagen', models.ImageField(upload_to=b'productos')),
                ('imagen1', models.ImageField(default=b'', upload_to=b'productos')),
                ('imagen2', models.ImageField(default=b'', upload_to=b'productos')),
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
        migrations.AddField(
            model_name='producto',
            name='variedad',
            field=models.ForeignKey(to='web.variedad', db_column=b'variedad_id'),
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
            field=models.ForeignKey(db_column=b'servicio_id', blank=True, to='web.servicio', null=True),
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
            field=models.ForeignKey(db_column=b'product_id', blank=True, to='web.producto', null=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='carrito',
            name='servicio',
            field=models.ForeignKey(db_column=b'servicio_id', blank=True, to='web.servicio', null=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='carrito',
            name='usuario',
            field=models.ForeignKey(to=settings.AUTH_USER_MODEL),
            preserve_default=True,
        ),
    ]
