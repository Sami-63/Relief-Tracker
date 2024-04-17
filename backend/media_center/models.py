from django.db import models

from core.models import AbstractTimeStampModel


class MediaType(models.TextChoices):
    IMAGE = 'image', 'Image'
    VIDEO = 'video', 'Video'
    AUDIO = 'audio', 'Audio'
    DOCUMENT = 'document', 'Document'


class MediaCenter(AbstractTimeStampModel):
    title = models.CharField(verbose_name='Title', max_length=255)
    file = models.FileField(verbose_name='File', upload_to='')
    type = models.CharField(
        verbose_name='Type',
        max_length=31,
        choices=MediaType.choices,
        default=MediaType.IMAGE,
    )

    def __str__(self):
        return self.title
