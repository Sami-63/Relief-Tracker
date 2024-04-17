from rest_framework.generics import ListAPIView
from rest_framework.response import Response
from rest_framework.views import APIView

from accounts.api.private.serializers import UserSerializer
from accounts.models import User
from core.api.permissions import IsModerator


class UsersAPIView(ListAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    permission_classes = [IsModerator]


class AssignRoleAPIView(APIView):
    queryset = User.objects.all()
    permission_classes = [IsModerator]

    def post(self, request, *args, **kwargs):
        uid = kwargs.get('pk')
        role = kwargs.get('role')

        try:
            user = User.objects.get(id=uid)
            user.role = role
            user.save()

            return Response(
                data={
                    'message': 'Role assigned successfully'
                },
                status=200,
            )

        except User.DoesNotExist:
            return Response(
                data={
                    'message': 'User not found'
                },
                status=404,
            )
