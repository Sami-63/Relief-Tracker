// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donated_upazila_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonatedUpazilaResponseImpl _$$DonatedUpazilaResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DonatedUpazilaResponseImpl(
      id: json['id'] as int,
      upazila:
          UpazilaResponse.fromJson(json['upazila'] as Map<String, dynamic>),
      donatedPeople: json['donated_people'] as int,
      donatedItems: (json['donated_items'] as List<dynamic>)
          .map((e) => DonationItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DonatedUpazilaResponseImplToJson(
        _$DonatedUpazilaResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'upazila': instance.upazila,
      'donated_people': instance.donatedPeople,
      'donated_items': instance.donatedItems,
    };
