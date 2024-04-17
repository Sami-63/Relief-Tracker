from django.db import models

from core.models import AbstractTimeStampModel


class Division(AbstractTimeStampModel):
    name = models.CharField(verbose_name='name', max_length=100)
    bangla_name = models.CharField(verbose_name='Bangla Name', max_length=100, blank=True)

    class Meta(AbstractTimeStampModel.Meta):
        verbose_name = 'Division'
        verbose_name_plural = 'Divisions'
        ordering = ['id']

    def __str__(self):
        return self.name


class District(AbstractTimeStampModel):
    division = models.ForeignKey(
        verbose_name='Division',
        to='location.Division',
        on_delete=models.CASCADE,
        related_name='districts',
    )
    name = models.CharField(verbose_name='name', max_length=100)
    bangla_name = models.CharField(verbose_name='Bangla Name', max_length=100, blank=True)
    longitude = models.FloatField(verbose_name='Longitude', blank=True, null=True)
    latitude = models.FloatField(verbose_name='Latitude', blank=True, null=True)

    class Meta(AbstractTimeStampModel.Meta):
        verbose_name = 'District'
        verbose_name_plural = 'Districts'
        ordering = ['id']

    def __str__(self):
        return self.name


class Upazila(AbstractTimeStampModel):
    district = models.ForeignKey(
        verbose_name='District',
        to='location.District',
        on_delete=models.CASCADE,
        related_name='upazilas'
    )
    name = models.CharField(verbose_name='name', max_length=100)
    bangla_name = models.CharField(verbose_name='Bangla Name', max_length=100, blank=True)
    longitude = models.FloatField(verbose_name='Longitude', blank=True, null=True)
    latitude = models.FloatField(verbose_name='Latitude', blank=True, null=True)

    class Meta(AbstractTimeStampModel.Meta):
        verbose_name = 'Upazila'
        verbose_name_plural = 'Upazilas'
        ordering = ['id']

    def __str__(self):
        return self.name


class Union(AbstractTimeStampModel):
    upazila = models.ForeignKey(
        verbose_name='Upazila',
        to='location.Upazila',
        on_delete=models.CASCADE,
        related_name='unions'
    )
    name = models.CharField(verbose_name='name', max_length=100)
    bangla_name = models.CharField(verbose_name='Bangla Name', max_length=100, blank=True)
    longitude = models.FloatField(verbose_name='Longitude', blank=True, null=True)
    latitude = models.FloatField(verbose_name='Latitude', blank=True, null=True)

    class Meta(AbstractTimeStampModel.Meta):
        verbose_name = 'Union'
        verbose_name_plural = 'Unions'
        ordering = ['id']

    def __str__(self):
        return self.name
