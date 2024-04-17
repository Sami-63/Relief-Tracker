from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include

from relief_tracker.settings import MEDIA_ROOT, MEDIA_URL

urlpatterns = [
    path('admin/', admin.site.urls),

    path('api/accounts/', include('accounts.api.urls')),
    path('api/locations/', include('location.api.urls')),
    path('api/disasters/', include('disaster.api.urls')),
    path('api/donations/', include('donation.api.urls')),
    path('api/media-center/', include('media_center.urls')),

    path('__debug__/', include('debug_toolbar.urls')),

    path('api-auth/', include('rest_framework.urls')),
]

urlpatterns += static(MEDIA_URL, document_root=MEDIA_ROOT)
