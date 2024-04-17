// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affected_upazila_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AffectedUpazilaResponseImpl _$$AffectedUpazilaResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AffectedUpazilaResponseImpl(
      id: json['id'] as int,
      upazila:
          UpazilaResponse.fromJson(json['upazila'] as Map<String, dynamic>),
      affectedPeople: json['affected_people'] as int,
    );

Map<String, dynamic> _$$AffectedUpazilaResponseImplToJson(
        _$AffectedUpazilaResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'upazila': instance.upazila,
      'affected_people': instance.affectedPeople,
    };
