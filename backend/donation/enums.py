from django.db.models import TextChoices
from django.utils.translation import gettext_lazy as _


class MediaType(TextChoices):
    IMAGE = "image", _("Image")
    VIDEO = "video", _("Video")
    AUDIO = "audio", _("Audio")
    OTHER = "other", _("Other")


class DonationState(TextChoices):
    PENDING = "pending", _("Pending")
    APPROVED = "approved", _("Approved")
    REJECTED = "rejected", _("Rejected")
