from django.urls import path, include

app_name = 'disaster'

urlpatterns = [
    path('public/', include('disaster.api.public.urls')),
    path('private/', include('disaster.api.private.urls')),
]
