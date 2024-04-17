// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DivisionDetailsResponseImpl _$$DivisionDetailsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DivisionDetailsResponseImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      banglaName: json['bangla_name'] as String,
      districts: (json['districts'] as List<dynamic>)
          .map((e) => DistrictResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DivisionDetailsResponseImplToJson(
        _$DivisionDetailsResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bangla_name': instance.banglaName,
      'districts': instance.districts,
    };
