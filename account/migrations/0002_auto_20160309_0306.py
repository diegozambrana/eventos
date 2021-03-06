# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2016-03-09 03:06
from __future__ import unicode_literals

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='usuario',
            name='create_at',
            field=models.DateTimeField(auto_now=True, default=datetime.datetime(2016, 3, 9, 3, 5, 40, 950794, tzinfo=utc)),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='usuario',
            name='email',
            field=models.EmailField(default=datetime.datetime(2016, 3, 9, 3, 5, 52, 723900, tzinfo=utc), max_length=255, unique=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='usuario',
            name='is_active',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='usuario',
            name='is_admin',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='usuario',
            name='update_at',
            field=models.DateTimeField(auto_now_add=True, default=datetime.datetime(2016, 3, 9, 3, 6, 1, 983346, tzinfo=utc)),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='usuario',
            name='username',
            field=models.CharField(default=datetime.datetime(2016, 3, 9, 3, 6, 15, 398918, tzinfo=utc), max_length=50, unique=True),
            preserve_default=False,
        ),
    ]
