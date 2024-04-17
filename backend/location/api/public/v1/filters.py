import django_filters as filters

from location.models import District, Upazila, Union, Division


class DivisionFilter(filters.FilterSet):
    name = filters.CharFilter(
        label='name',
        method='filter_by_name'
    )

    class Meta:
        model = Division
        fields = []

    @staticmethod
    def filter_by_name(queryset, name, value):
        return queryset.filter(
            name__icontains=value
        )


class DistrictFilter(filters.FilterSet):
    name = filters.CharFilter(
        label='name',
        method='filter_by_name'
    )

    class Meta:
        model = District
        fields = []

    @staticmethod
    def filter_by_name(queryset, name, value):
        return queryset.filter(
            name__icontains=value
        )


class UpazilaFilter(filters.FilterSet):
    name = filters.CharFilter(
        label='name',
        method='filter_by_name'
    )

    class Meta:
        model = Upazila
        fields = []

    @staticmethod
    def filter_by_name(queryset, name, value):
        return queryset.filter(
            name__icontains=value
        )


class UnionFilter(filters.FilterSet):
    name = filters.CharFilter(
        label='name',
        method='filter_by_name'
    )

    class Meta:
        model = Union
        fields = ['name']

    @staticmethod
    def filter_by_name(queryset, name, value):
        return queryset.filter(
            name__icontains=value
        )
