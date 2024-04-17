from django.db import models
from django.utils.translation import gettext_lazy as _


class AbstractTimeStampModel(models.Model):
    created_at = models.DateTimeField(verbose_name=_('Created At'), auto_now_add=True)
    modified_at = models.DateTimeField(verbose_name=_('Modified At'), auto_now=True)

    class Meta:
        abstract = True
        ordering = ['-created_at']
