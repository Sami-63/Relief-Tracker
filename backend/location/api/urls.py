from django.urls import path, include

app_name = 'location'

urlpatterns = [
    path('public/', include('location.api.public.urls')),
    path('private/', include('location.api.private.urls')),
]
