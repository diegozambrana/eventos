# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2016-03-07 03:29
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('event_manager', '0002_auto_20160307_0153'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contrato',
            name='evento',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='event_manager.Evento'),
        ),
    ]