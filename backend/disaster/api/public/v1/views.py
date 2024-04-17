from rest_framework.generics import RetrieveAPIView, ListAPIView

from disaster.api.public.v1.serializers import DisasterSerializer
from disaster.models import Disaster


class DisastersAPIView(ListAPIView):
    queryset = Disaster.objects.all()
    serializer_class = DisasterSerializer
    permission_classes = []


class DisasterDetailAPIView(RetrieveAPIView):
    queryset = Disaster.objects.all()
    serializer_class = DisasterSerializer
    permission_classes = []
