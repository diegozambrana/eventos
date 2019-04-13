# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2016-03-14 11:39
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0004_auto_20160314_1123'),
    ]

    operations = [
        migrations.AlterUniqueTogether(
            name='funcionui',
            unique_together=set([]),
        ),
        migrations.RemoveField(
            model_name='funcionui',
            name='funcion',
        ),
        migrations.RemoveField(
            model_name='funcionui',
            name='ui',
        ),
        migrations.RemoveField(
            model_name='relacion',
            name='t1',
        ),
        migrations.RemoveField(
            model_name='relacion',
            name='t2',
        ),
        migrations.AlterUniqueTogether(
            name='rolfuncion',
            unique_together=set([]),
        ),
        migrations.RemoveField(
            model_name='rolfuncion',
            name='funcion',
        ),
        migrations.RemoveField(
            model_name='rolfuncion',
            name='rol',
        ),
        migrations.AlterUniqueTogether(
            name='usuariorol',
            unique_together=set([]),
        ),
        migrations.RemoveField(
            model_name='usuariorol',
            name='rol',
        ),
        migrations.RemoveField(
            model_name='usuariorol',
            name='usuario',
        ),
        migrations.DeleteModel(
            name='FuncionUI',
        ),
        migrations.DeleteModel(
            name='Relacion',
        ),
        migrations.DeleteModel(
            name='RolFuncion',
        ),
        migrations.DeleteModel(
            name='Tabla1',
        ),
        migrations.DeleteModel(
            name='Tabla2',
        ),
        migrations.DeleteModel(
            name='UsuarioRol',
        ),
    ]