# Generated by Django 5.0.1 on 2024-04-10 09:32

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ('disaster', '0005_disaster_state_alter_disasterimage_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='disaster',
            name='images',
            field=models.JSONField(blank=True, default=list, verbose_name='Images'),
        ),
        migrations.DeleteModel(
            name='DisasterImage',
        ),
    ]
