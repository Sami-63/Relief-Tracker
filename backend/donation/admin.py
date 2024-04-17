from django.contrib import admin

from donation.models import (
    Donation,
    DonatedItems,
    DonatedDistrict,
    DonatedUpazila,
    DonatedUnion
)


@admin.register(Donation)
class DonationsAdmin(admin.ModelAdmin):
    list_display = [
        'id',
        'title',
        'created_by',
    ]


@admin.register(DonatedItems)
class DonatedItemsAdmin(admin.ModelAdmin):
    list_display = [
        'id',
        'name',
        'quantity',
    ]


@admin.register(DonatedDistrict)
class DonatedDistrictAdmin(admin.ModelAdmin):
    list_display = [
        'id',
        'donation',
        'district',
        'donated_people',
    ]


@admin.register(DonatedUpazila)
class DonatedUpazilaAdmin(admin.ModelAdmin):
    list_display = [
        'id',
        'donation',
        'upazila',
        'donated_people',
    ]


@admin.register(DonatedUnion)
class DonatedUnionAdmin(admin.ModelAdmin):
    list_display = [
        'id',
        'donation',
        'union',
        'donated_people',
    ]
