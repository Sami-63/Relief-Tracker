from django.db import models

from core.models import AbstractTimeStampModel
from donation.enums import DonationState


class Donation(AbstractTimeStampModel):
    title = models.CharField(verbose_name='Title', max_length=100)
    description = models.TextField(verbose_name='Description', blank=True)
    created_by = models.ForeignKey(
        verbose_name='Created By',
        to='accounts.User',
        related_name='added_donations',
        on_delete=models.CASCADE,
    )

    disaster = models.ForeignKey(
        verbose_name='Disaster',
        to='disaster.Disaster',
        on_delete=models.CASCADE,
        related_name='donations',
        null=True
    )
    donors = models.ManyToManyField(
        verbose_name='Donors',
        to='accounts.User',
        related_name='donations',
        blank=True
    )
    state = models.CharField(
        verbose_name='State',
        max_length=31,
        choices=DonationState.choices,
        default=DonationState.PENDING
    )
    images = models.JSONField(verbose_name='Images', default=list, blank=True)
    videos = models.JSONField(verbose_name='Videos', default=list, blank=True)
    documents = models.JSONField(verbose_name='Documents', default=list, blank=True)

    class Meta(AbstractTimeStampModel.Meta):
        verbose_name = 'Donation'
        verbose_name_plural = 'Donations'
        ordering = ['-created_at']


class DonatedDistrict(AbstractTimeStampModel):
    donation = models.ForeignKey(
        verbose_name='Donation',
        to='donation.Donation',
        on_delete=models.CASCADE,
        related_name='donated_districts'
    )
    district = models.ForeignKey(
        verbose_name='District',
        to='location.District',
        on_delete=models.CASCADE,
        related_name='donated_districts'
    )

    donated_people = models.PositiveIntegerField(verbose_name='Donated People', blank=True, null=True)
    description = models.TextField(verbose_name='Description', blank=True)

    class Meta(AbstractTimeStampModel.Meta):
        verbose_name = 'Donated District'
        verbose_name_plural = 'Donated Districts'


class DonatedUpazila(AbstractTimeStampModel):
    donation = models.ForeignKey(
        verbose_name='Donation',
        to='donation.Donation',
        on_delete=models.CASCADE,
        related_name='donated_upazilas'
    )
    upazila = models.ForeignKey(
        verbose_name='Upazila',
        to='location.Upazila',
        on_delete=models.CASCADE,
        related_name='donated_upazilas'
    )

    donated_people = models.PositiveIntegerField(verbose_name='Donated People', blank=True, null=True)
    description = models.TextField(verbose_name='Description', blank=True)

    class Meta(AbstractTimeStampModel.Meta):
        verbose_name = 'Donated Upazila'
        verbose_name_plural = 'Donated Upazilas'


class DonatedUnion(AbstractTimeStampModel):
    donation = models.ForeignKey(
        verbose_name='Donation',
        to='donation.Donation',
        on_delete=models.CASCADE,
        related_name='donated_unions'
    )
    union = models.ForeignKey(
        verbose_name='Union',
        to='location.Union',
        on_delete=models.CASCADE,
        related_name='donated_unions'
    )

    donated_people = models.PositiveIntegerField(verbose_name='Donated People', blank=True, null=True)
    description = models.TextField(verbose_name='Description', blank=True)

    class Meta(AbstractTimeStampModel.Meta):
        verbose_name = 'Donated Union'
        verbose_name_plural = 'Donated Unions'


class DonatedItems(AbstractTimeStampModel):
    donated_district = models.ForeignKey(
        verbose_name='Donated District',
        to='donation.DonatedDistrict',
        on_delete=models.CASCADE,
        related_name='donated_items',
        blank=True, null=True
    )
    donated_upazila = models.ForeignKey(
        verbose_name='Donated Upazila',
        to='donation.DonatedUpazila',
        on_delete=models.CASCADE,
        related_name='donated_items',
        blank=True, null=True
    )
    donated_union = models.ForeignKey(
        verbose_name='Donated Union',
        to='donation.DonatedUnion',
        on_delete=models.CASCADE,
        related_name='donated_items',
        blank=True, null=True
    )

    name = models.CharField(verbose_name='Name', max_length=100)
    quantity = models.FloatField(verbose_name='Quantity', default=0)
    unit = models.CharField(verbose_name='Unit', max_length=100)
    description = models.TextField(verbose_name='Description', blank=True)

    class Meta(AbstractTimeStampModel.Meta):
        verbose_name = 'Donated Item'
        verbose_name_plural = 'Donated Items'
