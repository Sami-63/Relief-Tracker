from django.urls import path

from disaster.api.private.v1.views import DisasterAPIView, DisasterDetailAPIView, DisasterAddImageAPIView

app_name = 'private'

urlpatterns = [
    path(
        route='disasters/',
        view=DisasterAPIView.as_view(),
        name='disaster-list-create'
    ),
    path(
        route='disasters/<int:pk>/details',
        view=DisasterDetailAPIView.as_view(),
        name='disaster-detail'
    ),
    path(
        route='disasters/<int:pk>/add-image',
        view=DisasterAddImageAPIView.as_view(),
        name='disaster-add-image'
    ),
]
