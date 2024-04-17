// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upazila_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpazilaResponseImpl _$$UpazilaResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpazilaResponseImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      banglaName: json['bangla_name'] as String,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      district:
          DistrictResponse.fromJson(json['district'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpazilaResponseImplToJson(
        _$UpazilaResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bangla_name': instance.banglaName,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'district': instance.district,
    };
