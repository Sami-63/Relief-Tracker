from django.contrib.auth.models import AbstractUser
from django.db import models
from django.utils.translation import gettext_lazy as _

from accounts.enums import Platform, UserType
from core.models import AbstractTimeStampModel


class User(AbstractUser):
    email = models.EmailField(verbose_name=_('Email'), unique=True)
    REQUIRED_FIELDS = ['email']
    role = models.CharField(
        verbose_name=_('Role'),
        max_length=31,
        choices=UserType.choices,
        default=UserType.GENERAL_USER,
    )
    platform = models.CharField(
        verbose_name=_('Platform'),
        max_length=10,
        choices=Platform.choices,
        default=Platform.ANDROID,
    )