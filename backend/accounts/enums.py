from django.db.models import TextChoices
from django.utils.translation import gettext_lazy as _


class Platform(TextChoices):
    ANDROID = 'android', _('Android')
    IOS = 'ios', _('iOS')
    WEB = 'web', _('Web')
    OTHER = 'other', _('Other')


class UserType(TextChoices):
    GENERAL_USER = 'general_user', _('General User')
    ADMIN = 'admin', _('Admin')
    MODERATOR = 'MODERATOR', _('Moderator')
