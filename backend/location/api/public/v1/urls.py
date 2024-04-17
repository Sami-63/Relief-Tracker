from django.urls import path

from location.api.public.v1.views import (
    DistrictAPIView,
    DistrictDetailAPIView,
    DivisionAPIView,
    DivisionDetailAPIView,
    UpazilaAPIView,
    UpazilaDetailAPIView,
    UnionAPIView,
    UnionDetailAPIView
)

app_name = 'v1'

urlpatterns = [
    path(
        route='divisions/',
        view=DivisionAPIView.as_view(),
        name='division'
    ),
    path(
        route='divisions/<int:pk>/details/',
        view=DivisionDetailAPIView.as_view(),
        name='division-detail'
    ),
    path(
        route='districts/',
        view=DistrictAPIView.as_view(),
        name='district'
    ),
    path(
        route='districts/<int:pk>/details/',
        view=DistrictDetailAPIView.as_view(),
        name='district-detail'
    ),
    path(
        route='upazilas/',
        view=UpazilaAPIView.as_view(),
        name='upazila'
    ),
    path(
        route='upazilas/<int:pk>/details/',
        view=UpazilaDetailAPIView.as_view(),
        name='upazila-detail'
    ),
    path(
        route='unions/',
        view=UnionAPIView.as_view(),
        name='union'
    ),
    path(
        route='unions/<int:pk>/details/',
        view=UnionDetailAPIView.as_view(),
        name='union-detail'
    ),
]
