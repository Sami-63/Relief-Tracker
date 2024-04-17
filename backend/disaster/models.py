from django.db import models
from django.utils.translation import gettext_lazy as _

from core.models import AbstractTimeStampModel


class DisasterState(models.TextChoices):
    ACTIVE = 'active', _('Active')
    INACTIVE = 'inactive', _('Inactive')


class Disaster(AbstractTimeStampModel):
    title = models.CharField(verbose_name='Title', max_length=100)
    description = models.TextField(verbose_name='Description', blank=True)

    start_time = models.DateTimeField(verbose_name='Start Time')
    end_time = models.DateTimeField(verbose_name='End Time', blank=True, null=True)

    # blank=True, null=True means the disaster haven't ended yet

    state = models.CharField(
        verbose_name='State',
        max_length=31,
        choices=DisasterState.choices,
        default=DisasterState.INACTIVE,
    )
    added_by = models.ForeignKey(
        verbose_name='Added By',
        to='accounts.User',
        on_delete=models.CASCADE,
        related_name='added_disasters',
        blank=True,
        null=True,
    )

    images = models.JSONField(verbose_name='Images', default=list, blank=True)

    class Meta(AbstractTimeStampModel.Meta):
        verbose_name = 'Disaster'
        verbose_name_plural = 'Disasters'
        ordering = ['-start_time']


class AffectedDistrict(AbstractTimeStampModel):
    disaster = models.ForeignKey(
        verbose_name='Disaster',
        to='disaster.Disaster',
        on_delete=models.CASCADE,
        related_name='affected_districts'
    )
    district = models.ForeignKey(
        verbose_name='District',
        to='location.District',
        on_delete=models.CASCADE,
        related_name='affected_districts'
    )

    affected_people = models.PositiveIntegerField(verbose_name='Affected People', null=True, blank=True)

    class Meta(AbstractTimeStampModel.Meta):
        verbose_name = 'Affected District'
        verbose_name_plural = 'Affected Districts'


class AffectedUpazila(AbstractTimeStampModel):
    disaster = models.ForeignKey(
        verbose_name='Disaster',
        to='disaster.Disaster',
        on_delete=models.CASCADE,
        related_name='affected_upazilas'
    )
    upazila = models.ForeignKey(
        verbose_name='Upazila',
        to='location.Upazila',
        on_delete=models.CASCADE,
        related_name='affected_upazilas'
    )

    affected_people = models.PositiveIntegerField(verbose_name='Affected People', null=True, blank=True)

    class Meta(AbstractTimeStampModel.Meta):
        verbose_name = 'Affected Upazila'
        verbose_name_plural = 'Affected Upazilas'


class AffectedUnion(AbstractTimeStampModel):
    disaster = models.ForeignKey(
        verbose_name='Disaster',
        to='disaster.Disaster',
        on_delete=models.CASCADE,
        related_name='affected_unions'
    )
    union = models.ForeignKey(
        verbose_name='Union',
        to='location.Union',
        on_delete=models.CASCADE,
        related_name='affected_unions'
    )

    affected_people = models.PositiveIntegerField(verbose_name='Affected People', null=True, blank=True)

    class Meta(AbstractTimeStampModel.Meta):
        verbose_name = 'Affected Union'
        verbose_name_plural = 'Affected Unions'
