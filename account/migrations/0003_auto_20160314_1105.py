# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2016-03-14 11:05
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0002_auto_20160309_0306'),
    ]

    operations = [
        migrations.CreateModel(
            name='Relacion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
        ),
        migrations.CreateModel(
            name='Tabla1',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=250)),
            ],
        ),
        migrations.CreateModel(
            name='Tabla2',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=250)),
            ],
        ),
        migrations.AddField(
            model_name='relacion',
            name='t1',
            field=models.ManyToManyField(to='account.Tabla1'),
        ),
        migrations.AddField(
            model_name='relacion',
            name='t2',
            field=models.ManyToManyField(to='account.Tabla2'),
        ),
    ]