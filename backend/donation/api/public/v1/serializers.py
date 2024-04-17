from rest_framework import serializers
from rest_framework.serializers import ModelSerializer

from accounts.api.private.serializers import UserSerializer
from accounts.models import User
from donation.enums import DonationState
from donation.models import (
    Donation,
    DonatedItems,
    DonatedDistrict,
    DonatedUpazila,
    DonatedUnion,
)
from location.api.public.v1.serializers import (
    DistrictSerializer,
    UpazilaSerializer,
    UnionSerializer
)


class DonateItemSerializer(ModelSerializer):
    class Meta:
        model = DonatedItems
        fields = [
            'id',
            'name',
            'quantity',
            'unit',
            'description',
        ]


class DonorSerializer(serializers.Serializer):
    username = serializers.CharField()


class DonatedDistrictSerializer(ModelSerializer):
    donated_items = DonateItemSerializer(many=True)

    class Meta:
        model = DonatedDistrict
        fields = [
            'id',
            'district',
            'donated_people',
            'donated_items',
        ]

    def to_representation(self, instance):
        ret = super(DonatedDistrictSerializer, self).to_representation(instance)
        ret['district'] = DistrictSerializer(instance.district).data
        return ret


class DonatedUpazilaSerializer(ModelSerializer):
    donated_items = DonateItemSerializer(many=True)

    class Meta:
        model = DonatedUpazila
        fields = [
            'id',
            'upazila',
            'donated_people',
            'donated_items',
        ]

    def to_representation(self, instance):
        ret = super(DonatedUpazilaSerializer, self).to_representation(instance)
        ret['upazila'] = UpazilaSerializer(instance.upazila).data
        return ret


class DonatedUnionSerializer(ModelSerializer):
    donated_items = DonateItemSerializer(many=True)

    class Meta:
        model = DonatedUnion
        fields = [
            'id',
            'union',
            'donated_people',
            'donated_items',
        ]

    def to_representation(self, instance):
        ret = super(DonatedUnionSerializer, self).to_representation(instance)
        ret['union'] = UnionSerializer(instance.union).data
        return ret


class DonationSerializer(ModelSerializer):
    donors = serializers.ListSerializer(
        child=DonorSerializer(),
        write_only=True
    )

    donated_districts = DonatedDistrictSerializer(write_only=True, many=True)
    donated_upazilas = DonatedUpazilaSerializer(write_only=True, many=True)
    donated_unions = DonatedUnionSerializer(write_only=True, many=True)
    created_by = UserSerializer(read_only=True)


    videos = serializers.SerializerMethodField()
    state = serializers.CharField(read_only=True)

    class Meta:
        model = Donation
        fields = [
            'id',
            'title',
            'description',
            'state',
            'created_by',

            'disaster',

            'donors',

            'donated_districts',
            'donated_upazilas',
            'donated_unions',

            'images',
            'videos',

            'created_at',
            'modified_at',
        ]

    @staticmethod
    def get_videos(instance):
        return instance.videos if instance.videos else []

    def to_representation(self, instance):
        ret = super(DonationSerializer, self).to_representation(instance)

        ret['donors'] = UserSerializer(instance.donors.all(), many=True).data

        ret['donated_districts'] = DonatedDistrictSerializer(instance.donated_districts.all(), many=True).data
        ret['donated_upazilas'] = DonatedUpazilaSerializer(instance.donated_upazilas.all(), many=True).data
        ret['donated_unions'] = DonatedUnionSerializer(instance.donated_unions.all(), many=True).data

        ret['images'] = [image for image in instance.images]

        return ret

    def create(self, validated_data):
        donors = validated_data.pop('donors')

        donated_districts = validated_data.pop('donated_districts')
        donated_upazilas = validated_data.pop('donated_upazilas')
        donated_unions = validated_data.pop('donated_unions')

        user = self.context['request'].user
        validated_data['created_by'] = user
        validated_data['state'] = DonationState.PENDING

        donation = super().create(validated_data)

        for donor in donors:
            user = User.objects.get(username=donor['username'])
            donation.donors.add(user)

        for donated_district in donated_districts:
            district = donated_district.pop('district')
            donation.donated_districts.create(
                district=district,
                donated_people=donated_district['donated_people']
            )

            for donated_item in donated_district['donated_items']:
                DonatedItems.objects.create(
                    donated_district=donation.donated_districts.last(),
                    name=donated_item['name'],
                    quantity=donated_item['quantity'],
                    unit=donated_item['unit'],
                    description=donated_item.get('description', ''),
                )

        for donated_upazila in donated_upazilas:
            upazila = donated_upazila.pop('upazila')
            donation.donated_upazilas.create(
                upazila=upazila,
                donated_people=donated_upazila['donated_people']
            )

            for donated_item in donated_upazila['donated_items']:
                DonatedItems.objects.create(
                    donated_upazila=donation.donated_upazilas.last(),
                    name=donated_item['name'],
                    quantity=donated_item['quantity'],
                    unit=donated_item['unit'],
                    description=donated_item.get('description', ''),
                )

        for donated_union in donated_unions:
            union = donated_union.pop('union')
            donation.donated_unions.create(
                union=union,
                donated_people=donated_union['donated_people']
            )

            for donated_item in donated_union['donated_items']:
                DonatedItems.objects.create(
                    donated_union=donation.donated_unions.last(),
                    name=donated_item['name'],
                    quantity=donated_item['quantity'],
                    unit=donated_item['unit'],
                    description=donated_item.get('description', ''),
                )

        return donation
