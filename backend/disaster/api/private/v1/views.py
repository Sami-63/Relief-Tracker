from rest_framework import status
from rest_framework.generics import ListCreateAPIView, RetrieveUpdateDestroyAPIView
from rest_framework.response import Response
from rest_framework.views import APIView

from core.api.permissions import IsModerator
from disaster.api.private.v1.serializers import DisasterSerializer, DisasterImageSerializer
from disaster.models import Disaster


class DisasterAPIView(ListCreateAPIView):
    queryset = Disaster.objects.all()
    serializer_class = DisasterSerializer
    permission_classes = [IsModerator]


class DisasterDetailAPIView(RetrieveUpdateDestroyAPIView):
    queryset = Disaster.objects.all()
    serializer_class = DisasterSerializer
    permission_classes = [IsModerator]


class DisasterAddImageAPIView(APIView):
    queryset = Disaster.objects.all()
    serializer_class = DisasterImageSerializer
    permission_classes = [IsModerator]

    # parser_classes = (MultiPartParser, FormParser,)

    def get_queryset(self):
        id = self.kwargs.get('pk')

        return Disaster.objects.get(id=id)

    def post(self, request, *args, **kwargs):
        id = kwargs.get('pk')

        disaster = Disaster.objects.get(id=id)

        data = {'images': request.data.getlist('images')}

        serializer = DisasterImageSerializer(data=data)
        serializer.is_valid(raise_exception=True)

        image_data = serializer.validated_data['images']
        for image in image_data:
            disaster.images.create(image=image)

        return Response(
            status=status.HTTP_201_CREATED,
            data=DisasterSerializer(disaster, context={'request': request}).data
        )
