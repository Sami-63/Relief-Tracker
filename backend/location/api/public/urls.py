from django.urls import path, include

app_name = 'public'

urlpatterns = [
    path('v1/', include('location.api.public.v1.urls')),
]
