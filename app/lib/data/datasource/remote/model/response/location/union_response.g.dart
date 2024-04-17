// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'union_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnionResponseImpl _$$UnionResponseImplFromJson(Map<String, dynamic> json) =>
    _$UnionResponseImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      banglaName: json['bangla_name'] as String,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      upazila:
          UpazilaResponse.fromJson(json['upazila'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UnionResponseImplToJson(_$UnionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bangla_name': instance.banglaName,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'upazila': instance.upazila,
    };
