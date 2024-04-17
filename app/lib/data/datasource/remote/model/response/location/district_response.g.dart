// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DistrictResponseImpl _$$DistrictResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DistrictResponseImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      banglaName: json['bangla_name'] as String,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      division:
          DivisionResponse.fromJson(json['division'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DistrictResponseImplToJson(
        _$DistrictResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bangla_name': instance.banglaName,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'division': instance.division,
    };
