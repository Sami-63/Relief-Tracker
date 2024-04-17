from django.urls import path, include

app_name = 'public'

urlpatterns = [
    path('v1/', include('donation.api.public.v1.urls')),
]
