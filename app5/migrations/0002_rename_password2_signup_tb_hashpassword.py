# Generated by Django 4.1.3 on 2022-12-01 04:18

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app5', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='signup_tb',
            old_name='password2',
            new_name='hashpassword',
        ),
    ]