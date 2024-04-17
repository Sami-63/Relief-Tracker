from django.urls import path, include

app_name = 'donation'

urlpatterns = [
    path('public/', include('donation.api.public.urls')),
    path('private/', include('donation.api.private.urls')),
]
