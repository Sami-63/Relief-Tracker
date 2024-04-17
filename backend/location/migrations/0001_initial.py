# Generated by Django 5.0.1 on 2024-02-29 05:34

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):
    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='District',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='Created At')),
                ('modified_at', models.DateTimeField(auto_now=True, verbose_name='Modified At')),
                ('name', models.CharField(max_length=100, unique=True, verbose_name='name')),
            ],
            options={
                'verbose_name': 'District',
                'verbose_name_plural': 'Districts',
                'ordering': ['-created_at'],
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='Upazila',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='Created At')),
                ('modified_at', models.DateTimeField(auto_now=True, verbose_name='Modified At')),
                ('name', models.CharField(max_length=100, unique=True, verbose_name='name')),
                ('district', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='upazilas',
                                               to='location.district', verbose_name='District')),
            ],
            options={
                'verbose_name': 'Upazila',
                'verbose_name_plural': 'Upazilas',
                'ordering': ['-created_at'],
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='Union',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='Created At')),
                ('modified_at', models.DateTimeField(auto_now=True, verbose_name='Modified At')),
                ('name', models.CharField(max_length=100, unique=True, verbose_name='name')),
                ('upazila', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='unions',
                                              to='location.upazila', verbose_name='Upazila')),
            ],
            options={
                'verbose_name': 'Union',
                'verbose_name_plural': 'Unions',
                'ordering': ['-created_at'],
                'abstract': False,
            },
        ),
    ]
