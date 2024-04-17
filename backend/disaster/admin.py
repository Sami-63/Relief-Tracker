from django.contrib import admin

from disaster.models import (
    Disaster,
    AffectedDistrict,
    AffectedUpazila,
    AffectedUnion,
)


@admin.register(Disaster)
class DisasterAdmin(admin.ModelAdmin):
    list_display = [
        'id',
        'title',
        'start_time',
    ]


@admin.register(AffectedDistrict)
class AffectedDistrictAdmin(admin.ModelAdmin):
    list_display = [
        'id',
        'disaster',
        'district',
        'affected_people',
    ]


@admin.register(AffectedUpazila)
class AffectedUpazilaAdmin(admin.ModelAdmin):
    list_display = [
        'id',
        'disaster',
        'upazila',
        'affected_people',
    ]


@admin.register(AffectedUnion)
class AffectedUnionAdmin(admin.ModelAdmin):
    list_display = [
        'id',
        'disaster',
        'union',
        'affected_people',
    ]
