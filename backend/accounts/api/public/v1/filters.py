import django_filters as filters
from django.db.models import Q

from accounts.models import User


class UserFilterSet(filters.FilterSet):
    name = filters.CharFilter(
        label='name',
        method='filter_by_name'
    )

    class Meta:
        model = User
        fields = []

    @staticmethod
    def filter_by_name(queryset, name, value):
        return queryset.filter(
            Q(first_name__icontains=value) | Q(last_name__icontains=value) | Q(username__icontains=value)
        )
