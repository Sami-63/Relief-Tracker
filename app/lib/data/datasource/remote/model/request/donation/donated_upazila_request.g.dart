// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donated_upazila_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonatedUpazilaRequestImpl _$$DonatedUpazilaRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DonatedUpazilaRequestImpl(
      upazila: json['upazila'] as int,
      donatedPeople: json['donated_people'] as int,
      donatedItems: (json['donated_items'] as List<dynamic>)
          .map((e) => DonatedItemRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DonatedUpazilaRequestImplToJson(
        _$DonatedUpazilaRequestImpl instance) =>
    <String, dynamic>{
      'upazila': instance.upazila,
      'donated_people': instance.donatedPeople,
      'donated_items': instance.donatedItems,
    };
