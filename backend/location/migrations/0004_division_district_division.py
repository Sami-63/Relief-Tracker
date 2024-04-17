# Generated by Django 5.0.1 on 2024-04-03 16:18

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ('location', '0003_alter_district_options_alter_union_options_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Division',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='Created At')),
                ('modified_at', models.DateTimeField(auto_now=True, verbose_name='Modified At')),
                ('name', models.CharField(max_length=100, verbose_name='name')),
                ('bangla_name', models.CharField(blank=True, max_length=100, verbose_name='Bangla Name')),
                ('longitude', models.FloatField(blank=True, null=True, verbose_name='Longitude')),
                ('latitude', models.FloatField(blank=True, null=True, verbose_name='Latitude')),
            ],
            options={
                'verbose_name': 'Division',
                'verbose_name_plural': 'Divisions',
                'ordering': ['id'],
                'abstract': False,
            },
        ),
        migrations.AddField(
            model_name='district',
            name='division',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE,
                                    related_name='districts', to='location.division', verbose_name='Division'),
        ),
    ]
