from rest_framework import serializers
from rest_framework.serializers import ModelSerializer

from accounts.api.public.v1.serializers import UserSerializer
from disaster.models import Disaster, AffectedUpazila, AffectedDistrict, AffectedUnion
from donation.api.public.v1.serializers import DonationSerializer
from location.api.public.v1.serializers import DistrictSerializer, UpazilaSerializer, UnionSerializer


class AffectedDistrictSerializer(ModelSerializer):
    class Meta:
        model = AffectedDistrict
        fields = [
            'id',
            'district',
            'affected_people',
        ]

    def to_representation(self, instance):
        ret = super(AffectedDistrictSerializer, self).to_representation(instance)
        ret['district'] = DistrictSerializer(instance.district).data
        return ret


class AffectedUpazilaSerializer(ModelSerializer):
    class Meta:
        model = AffectedUpazila
        fields = [
            'id',
            'upazila',
            'affected_people',
        ]

    def to_representation(self, instance):
        ret = super(AffectedUpazilaSerializer, self).to_representation(instance)
        ret['upazila'] = UpazilaSerializer(instance.upazila).data
        return ret


class AffectedUnionSerializer(ModelSerializer):
    class Meta:
        model = AffectedUnion
        fields = [
            'id',
            'union',
            'affected_people',
        ]

    def to_representation(self, instance):
        ret = super(AffectedUnionSerializer, self).to_representation(instance)
        ret['union'] = UnionSerializer(instance.union).data
        return ret


class DisasterSerializer(ModelSerializer):
    affected_districts = AffectedDistrictSerializer(write_only=True, many=True)
    affected_upazilas = AffectedUpazilaSerializer(write_only=True, many=True)
    affected_unions = AffectedUnionSerializer(write_only=True, many=True)
    images = serializers.ListField(
        child=serializers.CharField(),
        write_only=True,
    )

    class Meta:
        model = Disaster
        fields = [
            'id',
            'title',
            'description',
            'start_time',
            'end_time',
            'affected_districts',
            'affected_upazilas',
            'affected_unions',
            'images',
        ]

    def to_representation(self, instance: Disaster):
        ret = super(DisasterSerializer, self).to_representation(instance)

        ret['added_by'] = UserSerializer(instance.added_by).data if instance.added_by else None
        ret['affected_districts'] = AffectedDistrictSerializer(instance.affected_districts.all(), many=True).data
        ret['affected_upazilas'] = AffectedUpazilaSerializer(instance.affected_upazilas.all(), many=True).data
        ret['affected_unions'] = AffectedUnionSerializer(instance.affected_unions.all(), many=True).data
        ret['images'] = [image for image in instance.images]
        ret['donations'] = DonationSerializer(instance.donations.all(), many=True).data

        return ret

    def create(self, validated_data):
        affected_districts = validated_data.pop('affected_districts')
        affected_upazilas = validated_data.pop('affected_upazilas')
        affected_unions = validated_data.pop('affected_unions')

        validated_data['added_by'] = self.context['request'].user
        disaster = super().create(validated_data)

        for affected_district in affected_districts:
            district = affected_district.pop('district')
            disaster.affected_districts.create(district=district, affected_people=affected_district['affected_people'])

        for affected_upazila in affected_upazilas:
            upazila = affected_upazila.pop('upazila')
            disaster.affected_upazilas.create(upazila=upazila, affected_people=affected_upazila['affected_people'])

        for affected_union in affected_unions:
            union = affected_union.pop('union')
            disaster.affected_unions.create(union=union, affected_people=affected_union['affected_people'])

        return disaster


class MultipleImageFieldSerializer(serializers.ListSerializer):
    child = serializers.ImageField()


class DisasterImageSerializer(serializers.Serializer):
    images = serializers.ListSerializer(
        child=serializers.ImageField(),
        write_only=True,
    )

    class Meta:
        fields = [
            'images',
        ]
