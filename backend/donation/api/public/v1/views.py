from rest_framework.generics import CreateAPIView, ListAPIView, RetrieveAPIView
from rest_framework.permissions import IsAuthenticated

from donation.api.public.v1.filters import DonationFilter
from donation.api.public.v1.serializers import DonationSerializer
from donation.enums import DonationState
from donation.models import Donation


class DonationCreateAPIView(CreateAPIView):
    queryset = Donation.objects.all()
    serializer_class = DonationSerializer
    permission_classes = []


class DonationsAPIView(ListAPIView):
    serializer_class = DonationSerializer
    permission_classes = []
    filterset_class = DonationFilter

    def get_queryset(self):
        if self.request.user.is_authenticated and (
                self.request.user.role == 'admin' or
                self.request.user.role == 'moderator'
        ):
            return Donation.objects.all()

        return Donation.objects.filter(state=DonationState.APPROVED)


class MyDonationsAPIView(ListAPIView):
    queryset = Donation.objects.all()
    serializer_class = DonationSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        return Donation.objects.filter(created_by=self.request.user)


class DonationDetailAPIView(RetrieveAPIView):
    queryset = Donation.objects.all()
    serializer_class = DonationSerializer
    permission_classes = []

# class DonationAddMediaAPIView(APIView):
#     serializer_class = MediaSerializer
#     permission_classes = [IsAuthenticated]
#
#     def post(self, request, *args, **kwargs):
#         donation_id = kwargs.get('pk')
#         donation = Donation.objects.filter(id=donation_id).first()
#
#         if not donation:
#             return Response(
#                 data={
#                     'message': 'Donation not found'
#                 },
#                 status=status.HTTP_404_NOT_FOUND
#             )
#
#         user = request.user
#         if user != donation.created_by:
#             return Response(
#                 data={
#                     'message': 'You are not allowed to add media to this donation'
#                 },
#                 status=status.HTTP_403_FORBIDDEN
#             )
#
#         if not request.FILES:
#             return Response(
#                 data={
#                     'message': 'No files found'
#                 },
#                 status=status.HTTP_400_BAD_REQUEST
#             )
#
#         for file in request.FILES.getlist('media'):
#             media_type = get_file_type(file)
#             Media.objects.create(
#                 donation=donation,
#                 media=file,
#                 type=media_type
#             )
#
#         return Response(
#             data={
#                 'message': 'Media added successfully',
#                 'donation': DonationSerializer(donation).data,
#                 'media': MediaSerializer(donation.media.all(), many=True, context={'request': request}).data
#             },
#             status=status.HTTP_201_CREATED
#         )


# class DonationRemoveMediaAPIView(APIView):
#     permission_classes = [IsAuthenticated]
#
#     def delete(self, request, *args, **kwargs):
#         donation_id = kwargs.get('pk')
#         donation = Donation.objects.filter(id=donation_id).first()
#
#         if not donation:
#             return Response(
#                 data={
#                     'message': 'Donation not found'
#                 },
#                 status=status.HTTP_404_NOT_FOUND
#             )
#
#         user = request.user
#         if user != donation.created_by:
#             return Response(
#                 data={
#                     'message': 'You are not allowed to remove media to this donation'
#                 },
#                 status=status.HTTP_403_FORBIDDEN
#             )
#
#         media_ids = request.data.get('media_ids', [])
#
#         for media_id in media_ids:
#             media = Media.objects.filter(id=media_id, donation=donation).first()
#             if media:
#                 media.delete()
#
#         return Response(
#             data={'message': 'Media deleted successfully'},
#             status=status.HTTP_204_NO_CONTENT
#         )
