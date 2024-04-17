// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disaster_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DisasterResponseImpl _$$DisasterResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DisasterResponseImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String?,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      affectedDistricts: (json['affected_districts'] as List<dynamic>)
          .map((e) =>
              AffectedDistrictResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      affectedUpazilas: (json['affected_upazilas'] as List<dynamic>)
          .map((e) =>
              AffectedUpazilaResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      affectedUnions: (json['affected_unions'] as List<dynamic>)
          .map((e) => AffectedUnionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      donations: (json['donations'] as List<dynamic>)
          .map((e) => DonationResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DisasterResponseImplToJson(
        _$DisasterResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'images': instance.images,
      'affected_districts': instance.affectedDistricts,
      'affected_upazilas': instance.affectedUpazilas,
      'affected_unions': instance.affectedUnions,
      'donations': instance.donations,
    };
