# Generated by Django 4.1.3 on 2022-12-06 06:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('adminapp', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='form_tb',
            name='proimage',
            field=models.ImageField(default=0, upload_to='product/'),
            preserve_default=False,
        ),
    ]