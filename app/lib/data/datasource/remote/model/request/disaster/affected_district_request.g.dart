// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affected_district_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AffectedDistrictRequestImpl _$$AffectedDistrictRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AffectedDistrictRequestImpl(
      district: json['district'] as int,
      affectedPeople: json['affected_people'] as int,
    );

Map<String, dynamic> _$$AffectedDistrictRequestImplToJson(
        _$AffectedDistrictRequestImpl instance) =>
    <String, dynamic>{
      'district': instance.district,
      'affected_people': instance.affectedPeople,
    };
