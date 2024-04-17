from rest_framework import serializers

from location.models import District, Upazila, Union, Division


class DivisionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Division
        fields = [
            'id',
            'name',
            'bangla_name',
        ]


class DivisionDetailsSerializer(serializers.ModelSerializer):
    districts = serializers.SerializerMethodField()

    class Meta:
        model = Division
        fields = [
            'id',
            'name',
            'bangla_name',
            'districts'
        ]

    @staticmethod
    def get_districts(obj):
        districts = obj.districts.all()
        return DistrictSerializer(districts, many=True).data


class DistrictSerializer(serializers.ModelSerializer):
    division = DivisionSerializer()

    class Meta:
        model = District
        fields = [
            'id',
            'name',
            'bangla_name',
            'latitude',
            'longitude',
            'division',
        ]


class DistrictDetailsSerializer(serializers.ModelSerializer):
    upazilas = serializers.SerializerMethodField()

    class Meta:
        model = District
        fields = [
            'id',
            'name',
            'bangla_name',
            'latitude',
            'longitude',
            'upazilas'
        ]

    @staticmethod
    def get_upazilas(obj):
        upazilas = obj.upazilas.all()
        return UpazilaSerializer(upazilas, many=True).data


class UpazilaDetailsSerializer(serializers.ModelSerializer):
    unions = serializers.SerializerMethodField()

    class Meta:
        model = Upazila
        fields = [
            'id',
            'name',
            'bangla_name',
            'latitude',
            'longitude',
            'unions'
        ]

    @staticmethod
    def get_unions(obj):
        unions = obj.unions.all()
        return UnionSerializer(unions, many=True).data


class UpazilaSerializer(serializers.ModelSerializer):
    district = DistrictSerializer()

    class Meta:
        model = Upazila
        fields = [
            'id',
            'name',
            'bangla_name',
            'latitude',
            'longitude',
            'district'
        ]


class UnionSerializer(serializers.ModelSerializer):
    upazila = UpazilaSerializer()

    class Meta:
        model = Union
        fields = [
            'id',
            'name',
            'bangla_name',
            'latitude',
            'longitude',
            'upazila'
        ]
