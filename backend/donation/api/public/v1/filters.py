import django_filters as filters
from django.db.models import Q

from donation.models import Donation


class DonationFilter(filters.FilterSet):
    district = filters.NumberFilter(
        label='district',
        method='filter_by_district'
    )
    upazila = filters.NumberFilter(
        label='upazila',
        method='filter_by_upazila'
    )
    union = filters.NumberFilter(
        label='union',
        method='filter_by_union'
    )

    class Meta:
        model = Donation
        fields = []

    @staticmethod
    def filter_by_district(queryset, name, value):
        if value == -1:
            return queryset
        return queryset.filter(Q(donated_districts__district__id=value))

    @staticmethod
    def filter_by_upazila(queryset, name, value):
        if value == -1:
            return queryset
        return queryset.filter(Q(donated_upazilas__upazilas__id=value))

    @staticmethod
    def filter_by_union(queryset, name, value):
        if value == -1:
            return queryset
        return queryset.filter(Q(donated_unions__unions__id=value))
