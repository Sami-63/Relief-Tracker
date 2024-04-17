from rest_framework.response import Response
from rest_framework.views import APIView

from core.api.permissions import IsModerator
from donation.api.public.v1.serializers import DonationSerializer
from donation.models import Donation


class DonationVerificationAPIView(APIView):
    permission_classes = [IsModerator]
    queryset = Donation.objects.all()

    def post(self, request, *args, **kwargs):
        donation_id = kwargs.get('id')
        state = kwargs.get('state')

        try:
            donation = Donation.objects.get(id=donation_id)
            donation.state = state
            donation.save()

        except Donation.DoesNotExist:
            return Response(
                data={
                    'message': f'Donation {donation_id} not found'
                },
                status=404,
            )

        return Response(
            data=DonationSerializer(donation).data,
            status=200,
        )
