from rest_framework.generics import ListAPIView, RetrieveAPIView

from location.api.public.v1.filters import (
    DistrictFilter,
    DivisionFilter,
    UpazilaFilter,
    UnionFilter
)
from location.api.public.v1.serializers import (
    DistrictSerializer,
    DistrictDetailsSerializer,
    DivisionSerializer,
    DivisionDetailsSerializer,
    UpazilaSerializer,
    UpazilaDetailsSerializer,
    UnionSerializer
)
from location.models import District, Upazila, Union, Division


class DivisionAPIView(ListAPIView):
    queryset = Division.objects.all()
    serializer_class = DivisionSerializer
    filterset_class = DivisionFilter


class DivisionDetailAPIView(RetrieveAPIView):
    queryset = Division.objects.all().prefetch_related('districts')
    serializer_class = DivisionDetailsSerializer


class DistrictAPIView(ListAPIView):
    queryset = District.objects.all()
    serializer_class = DistrictSerializer
    filterset_class = DistrictFilter


class DistrictDetailAPIView(RetrieveAPIView):
    queryset = District.objects.all().prefetch_related('upazilas')
    serializer_class = DistrictDetailsSerializer


class UpazilaAPIView(ListAPIView):
    queryset = Upazila.objects.all()
    serializer_class = UpazilaSerializer
    filterset_class = UpazilaFilter


class UpazilaDetailAPIView(RetrieveAPIView):
    queryset = Upazila.objects.all().prefetch_related('unions')
    serializer_class = UpazilaDetailsSerializer


class UnionAPIView(ListAPIView):
    queryset = Union.objects.all()
    serializer_class = UnionSerializer
    filterset_class = UnionFilter


class UnionDetailAPIView(RetrieveAPIView):
    queryset = Union.objects.all()
    serializer_class = UnionSerializer
