from django.contrib import admin

from location.models import (
    Division,
    District,
    Upazila,
    Union,
)


@admin.register(Division)
class DivisionAdmin(admin.ModelAdmin):
    list_display = [
        'id',
        'name',
        'bangla_name',
    ]
    list_filter = ['name']


@admin.register(District)
class DistrictAdmin(admin.ModelAdmin):
    list_display = [
        'id',
        'name',
        'division',
        'longitude',
        'latitude',
    ]
    list_filter = [
        'name',
        'division',
    ]
    search_fields = [
        'name',
    ]


@admin.register(Upazila)
class UpazilaAdmin(admin.ModelAdmin):
    list_display = [
        'id',
        'name',
        'district',
        'longitude',
        'latitude',
    ]
    list_filter = [
        'name',
        'district',
    ]
    search_fields = [
        'name',
    ]


@admin.register(Union)
class UnionAdmin(admin.ModelAdmin):
    list_display = [
        'id',
        'name',
        'upazila',
        'longitude',
        'latitude',
    ]
    list_filter = [
        'name',
        'upazila',
    ]
