from django.contrib.auth.mixins import UserPassesTestMixin
from rest_framework.permissions import BasePermission
from rest_framework.permissions import DjangoModelPermissions as BaseDjangoModelPermissions


class DjangoModelPermissions(BaseDjangoModelPermissions):
    perms_map = {
        'GET': ['%(app_label)s.view_%(model_name)s'],
        'OPTIONS': [],
        'HEAD': [],
        'POST': ['%(app_label)s.add_%(model_name)s'],
        'PUT': ['%(app_label)s.change_%(model_name)s'],
        'PATCH': ['%(app_label)s.change_%(model_name)s'],
        'DELETE': ['%(app_label)s.delete_%(model_name)s'],
    }


class IsModerator(BasePermission):
    def has_permission(self, request, view):
        return request.user.role == 'moderator' or request.user.role == 'admin'


class IsSuperUser(UserPassesTestMixin):
    def test_func(self):
        return self.request.user.is_superuser
