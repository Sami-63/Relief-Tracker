from django.urls import path

from disaster.api.public.v1.views import DisasterDetailAPIView, DisastersAPIView

app_name = 'v1'

urlpatterns = [
    path(
        route='disasters/',
        view=DisastersAPIView.as_view(),
        name='disaster-list-create'
    ),
    path(
        route='disasters/<int:pk>/details',
        view=DisasterDetailAPIView.as_view(),
        name='disaster-detail'
    )
]
