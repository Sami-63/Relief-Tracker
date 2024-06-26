from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from django.contrib.auth.models import Permission
from django.utils.translation import gettext_lazy as _

from accounts.models import User

admin.site.register(Permission)


@admin.register(User)
class UserAdmin(BaseUserAdmin):
    ordering = ['-id']
    list_display = [
        'id',
        'username',
        'email',
        'first_name',
        'last_name',
        'is_active',
        'is_staff',
    ]
    fieldsets = [
        [
            None,
            {
                'fields': ['username', 'password'],
            },
        ],
        [
            _('Personal info'),
            {
                'fields': ['first_name', 'last_name', 'email', 'platform', 'role'],
            },
        ],
        [
            _('Permissions'),
            {
                'fields': [
                    'is_active',
                    'is_staff',
                    'is_superuser',
                    'groups',
                    'user_permissions',
                ],
            },
        ],
        [
            _('Important dates'),
            {
                'fields': ['last_login', 'date_joined'],
            },
        ],
    ]
    search_fields = ['username', 'first_name', 'last_name', 'email']
    date_hierarchy = 'date_joined'
    readonly_fields = ['last_login', 'date_joined']