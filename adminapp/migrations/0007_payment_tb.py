# Generated by Django 4.1.3 on 2022-12-12 05:27

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('adminapp', '0006_signup_tb_cart_tb'),
    ]

    operations = [
        migrations.CreateModel(
            name='payment_tb',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('totalamount', models.CharField(max_length=255)),
                ('status', models.CharField(max_length=255)),
                ('date', models.DateField()),
                ('time', models.TimeField()),
                ('uid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='adminapp.signup_tb')),
            ],
        ),
    ]
