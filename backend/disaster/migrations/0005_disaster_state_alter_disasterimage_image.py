# Generated by Django 5.0.1 on 2024-04-07 18:21

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ('disaster', '0004_otheraffectedlocations_latitude_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='disaster',
            name='state',
            field=models.CharField(choices=[('active', 'Active'), ('inactive', 'Inactive')], default='inactive',
                                   max_length=31, verbose_name='State'),
        ),
        migrations.AlterField(
            model_name='disasterimage',
            name='image',
            field=models.ImageField(upload_to='disaster/', verbose_name='Image'),
        ),
    ]