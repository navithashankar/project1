# Generated by Django 4.1.3 on 2022-12-14 11:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('adminapp', '0007_payment_tb'),
    ]

    operations = [
        migrations.CreateModel(
            name='admin_tb',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('email', models.CharField(max_length=255)),
                ('password', models.CharField(max_length=255)),
                ('phone', models.CharField(max_length=255)),
            ],
        ),
    ]
