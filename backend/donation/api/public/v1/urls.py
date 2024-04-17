from django.urls import path

from donation.api.public.v1.views import (
    DonationCreateAPIView,
    DonationsAPIView,
    DonationDetailAPIView,
    MyDonationsAPIView,
)

app_name = 'v1'

urlpatterns = [
    path(
        route='donation/create/',
        view=DonationCreateAPIView.as_view(),
        name='donations-create'
    ),
    path(
        route='donations/',
        view=DonationsAPIView.as_view(),
        name='donation-list'
    ),
    path(
        route='donations/my-donations/',
        view=MyDonationsAPIView.as_view(),
        name='donation-list'
    ),
    path(
        route='donations/<int:pk>/details',
        view=DonationDetailAPIView.as_view(),
        name='donation-detail'
    ),
]
