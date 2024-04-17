# Generated by Django 5.0.1 on 2024-03-08 08:56

import django.db.models.deletion
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ('donation', '0005_donation_state_media_type'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.AddField(
            model_name='donation',
            name='created_by',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE,
                                    related_name='added_donations', to=settings.AUTH_USER_MODEL,
                                    verbose_name='Created By'),
        ),
    ]