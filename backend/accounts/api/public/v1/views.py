from django.contrib.auth import login
from rest_framework import status
from rest_framework.authtoken.models import Token
from rest_framework.generics import CreateAPIView, RetrieveUpdateAPIView, ListAPIView
from rest_framework.permissions import AllowAny, IsAuthenticated
from rest_framework.response import Response
from rest_framework.views import APIView

from accounts.api.public.v1.filters import UserFilterSet
from accounts.api.public.v1.serializers import UserSerializer, LoginSerializer
from accounts.models import User


class SignupView(CreateAPIView):
    serializer_class = UserSerializer
    permission_classes = [AllowAny]

    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user = self.perform_create(serializer)
        headers = self.get_success_headers(serializer.data)

        return Response(
            data={
                'token': self._get_token(user),
                'user': UserSerializer(user).data
            },
            status=status.HTTP_201_CREATED,
            headers=headers
        )

    def perform_create(self, serializer):
        user = serializer.save()
        login(self.request, user)
        return user

    def _get_token(self, user):
        token, created = Token.objects.get_or_create(user=user)
        return token.key


class LoginView(APIView):
    permission_classes = [AllowAny]
    serializer_class = LoginSerializer

    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data,
                                           context={'request': request})
        serializer.is_valid(raise_exception=True)

        user = serializer.validated_data['user']
        login(request, user)

        return Response({
            'token': self._get_token(user),
            'user': UserSerializer(user).data
        }, status=status.HTTP_200_OK)

    def _get_token(self, user):
        token, created = Token.objects.get_or_create(user=user)
        return token.key


class UserInfoView(RetrieveUpdateAPIView):
    permission_classes = [IsAuthenticated]
    serializer_class = UserSerializer

    def get_object(self):
        return self.request.user


class UsersAPIView(ListAPIView):
    permission_classes = [IsAuthenticated]
    queryset = User.objects.all()
    serializer_class = UserSerializer
    filterset_class = UserFilterSet
