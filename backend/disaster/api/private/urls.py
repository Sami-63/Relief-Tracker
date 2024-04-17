from django.urls import path, include

app_name = 'private'

urlpatterns = [
    path('v1/', include('disaster.api.private.v1.urls')),
]
