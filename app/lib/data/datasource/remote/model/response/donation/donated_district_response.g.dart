// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donated_district_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonatedDistrictResponseImpl _$$DonatedDistrictResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DonatedDistrictResponseImpl(
      id: json['id'] as int,
      district:
          DistrictResponse.fromJson(json['district'] as Map<String, dynamic>),
      donatedPeople: json['donated_people'] as int,
      donatedItems: (json['donated_items'] as List<dynamic>)
          .map((e) => DonationItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DonatedDistrictResponseImplToJson(
        _$DonatedDistrictResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'district': instance.district,
      'donated_people': instance.donatedPeople,
      'donated_items': instance.donatedItems,
    };
