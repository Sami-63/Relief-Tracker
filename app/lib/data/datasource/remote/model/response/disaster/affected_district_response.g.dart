// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affected_district_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AffectedDistrictResponseImpl _$$AffectedDistrictResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AffectedDistrictResponseImpl(
      id: json['id'] as int,
      district:
          DistrictResponse.fromJson(json['district'] as Map<String, dynamic>),
      affectedPeople: json['affected_people'] as int,
    );

Map<String, dynamic> _$$AffectedDistrictResponseImplToJson(
        _$AffectedDistrictResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'district': instance.district,
      'affected_people': instance.affectedPeople,
    };
