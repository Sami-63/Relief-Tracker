from django.urls import path

from accounts.api.public.v1.views import SignupView, LoginView, UserInfoView, UsersAPIView

app_name = 'v1'

urlpatterns = [
    path('signup/', SignupView.as_view(), name='signup'),
    path('login/', LoginView.as_view(), name='login'),
    path('user-info/', UserInfoView.as_view(), name='user-info'),
    path('users/', UsersAPIView.as_view(), name='users'),
]
