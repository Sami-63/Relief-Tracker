// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_affected_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtherAffectedLocationResponseImpl
    _$$OtherAffectedLocationResponseImplFromJson(Map<String, dynamic> json) =>
        _$OtherAffectedLocationResponseImpl(
          id: json['id'] as int,
          location: json['location'] as String,
          affectedPeople: json['affected_people'] as int,
        );

Map<String, dynamic> _$$OtherAffectedLocationResponseImplToJson(
        _$OtherAffectedLocationResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'affected_people': instance.affectedPeople,
    };
