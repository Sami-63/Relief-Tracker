from django.urls import path

from accounts.api.private.views import UsersAPIView, AssignRoleAPIView

app_name = 'private'

urlpatterns = [
    path(
        route='users/',
        view=UsersAPIView.as_view(),
        name='users'
    ),
    path(
        route='users/<int:pk>/assign-role/<str:role>/',
        view=AssignRoleAPIView.as_view(),
        name='user-detail'
    )
]
