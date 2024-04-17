// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_affected_location_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtherAffectedLocationRequestImpl _$$OtherAffectedLocationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$OtherAffectedLocationRequestImpl(
      location: json['location'] as String,
      affectedPeople: json['affected_people'] as int,
    );

Map<String, dynamic> _$$OtherAffectedLocationRequestImplToJson(
        _$OtherAffectedLocationRequestImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'affected_people': instance.affectedPeople,
    };
