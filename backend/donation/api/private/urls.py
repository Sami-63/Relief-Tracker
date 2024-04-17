from django.urls import path

from donation.api.private.views import DonationVerificationAPIView

app_name = 'private'

urlpatterns = [
    path(
        route='donations/<int:id>/update/<str:state>/',
        view=DonationVerificationAPIView.as_view(),
        name='users-list'
    ),

]
