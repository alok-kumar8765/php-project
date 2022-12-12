# -*- coding: utf-8 -*-
# Generated by Django 1.11.dev20161029223924 on 2016-11-09 16:06
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('machine', '0003_auto_20161109_2206'),
        ('accounts', '0006_auto_20161109_2028'),
    ]

    operations = [
        migrations.AddField(
            model_name='userprofile',
            name='machine',
            field=models.ManyToManyField(blank=True, to='machine.Machine'),
        ),
        migrations.AlterField(
            model_name='userprofile',
            name='department',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='machine.Department'),
        ),
        migrations.DeleteModel(
            name='Department',
        ),
    ]