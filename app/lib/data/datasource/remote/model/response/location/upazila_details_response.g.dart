// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upazila_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpazilaDetailsResponseImpl _$$UpazilaDetailsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpazilaDetailsResponseImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      banglaName: json['bangla_name'] as String,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      unions: (json['unions'] as List<dynamic>)
          .map((e) => UnionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UpazilaDetailsResponseImplToJson(
        _$UpazilaDetailsResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bangla_name': instance.banglaName,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'unions': instance.unions,
    };
