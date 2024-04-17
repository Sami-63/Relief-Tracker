// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DistrictDetailsResponseImpl _$$DistrictDetailsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DistrictDetailsResponseImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      banglaName: json['bangla_name'] as String,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      upazilas: (json['upazilas'] as List<dynamic>)
          .map((e) => UpazilaResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DistrictDetailsResponseImplToJson(
        _$DistrictDetailsResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bangla_name': instance.banglaName,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'upazilas': instance.upazilas,
    };
