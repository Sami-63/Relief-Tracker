from django.urls import path

from media_center.views import FileUploadView

app_name = 'media_center'

urlpatterns = [
    path(
        route='upload/',
        view=FileUploadView.as_view(),
        name='upload_file'
    )
]
