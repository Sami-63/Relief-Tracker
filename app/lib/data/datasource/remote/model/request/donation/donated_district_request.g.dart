// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donated_district_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonatedDistrictRequestImpl _$$DonatedDistrictRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DonatedDistrictRequestImpl(
      district: json['district'] as int,
      donatedPeople: json['donated_people'] as int,
      donatedItems: (json['donated_items'] as List<dynamic>)
          .map((e) => DonatedItemRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DonatedDistrictRequestImplToJson(
        _$DonatedDistrictRequestImpl instance) =>
    <String, dynamic>{
      'district': instance.district,
      'donated_people': instance.donatedPeople,
      'donated_items': instance.donatedItems,
    };
