# Generated by Django 5.0.1 on 2024-04-09 17:12

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ('media_center', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='mediacenter',
            name='file',
            field=models.FileField(upload_to='', verbose_name='File'),
        ),
    ]
