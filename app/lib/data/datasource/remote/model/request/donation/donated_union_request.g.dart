// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donated_union_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonatedUnionRequestImpl _$$DonatedUnionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DonatedUnionRequestImpl(
      union: json['union'] as int,
      donatedPeople: json['donated_people'] as int,
      donatedItems: (json['donated_items'] as List<dynamic>)
          .map((e) => DonatedItemRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DonatedUnionRequestImplToJson(
        _$DonatedUnionRequestImpl instance) =>
    <String, dynamic>{
      'union': instance.union,
      'donated_people': instance.donatedPeople,
      'donated_items': instance.donatedItems,
    };
