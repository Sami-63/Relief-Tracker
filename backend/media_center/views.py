from rest_framework.parsers import MultiPartParser, FormParser
from rest_framework.response import Response
from rest_framework.views import APIView

from media_center.models import MediaCenter, MediaType
from media_center.serializers import MediaSerializer


def get_file_type_by_extension(name):
    if name.endswith('.jpg') or name.endswith('.jpeg') or name.endswith('.png') or name.endswith('.gif'):
        return MediaType.IMAGE
    elif name.endswith('.mp4') or name.endswith('.avi') or name.endswith('.mkv') or name.endswith('.mov'):
        return MediaType.VIDEO
    elif name.endswith('.mp3') or name.endswith('.wav') or name.endswith('.flac') or name.endswith('.ogg'):
        return MediaType.AUDIO
    else:
        return MediaType.DOCUMENT


class FileUploadView(APIView):
    parser_classes = (MultiPartParser, FormParser)
    queryset = MediaCenter.objects.all()
    permission_classes = []

    @staticmethod
    def post(request, *args, **kwargs):
        files = request.FILES.getlist('files')

        uploaded_files = []
        for file in files:
            file_type = get_file_type_by_extension(file.name)
            media = MediaCenter(
                title=file.name,
                file=file,
                type=file_type
            )
            media.save()
            uploaded_files.append(media)

        return Response(
            status=201,
            data=MediaSerializer(
                uploaded_files,
                many=True,
                context={'request': request}
            ).data
        )
