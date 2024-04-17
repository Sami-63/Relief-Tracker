// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disaster_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DisasterRequestImpl _$$DisasterRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DisasterRequestImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String?,
      affectedDistricts: (json['affected_districts'] as List<dynamic>)
          .map((e) =>
              AffectedDistrictRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      affectedUpazilas: (json['affected_upazilas'] as List<dynamic>)
          .map(
              (e) => AffectedUpazilaRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      affectedUnions: (json['affected_unions'] as List<dynamic>)
          .map((e) => AffectedUnionRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DisasterRequestImplToJson(
        _$DisasterRequestImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'affected_districts': instance.affectedDistricts,
      'affected_upazilas': instance.affectedUpazilas,
      'affected_unions': instance.affectedUnions,
    };
