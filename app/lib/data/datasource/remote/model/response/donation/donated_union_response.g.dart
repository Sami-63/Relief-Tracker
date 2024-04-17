// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donated_union_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonatedUnionResponseImpl _$$DonatedUnionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DonatedUnionResponseImpl(
      id: json['id'] as int,
      union: UnionResponse.fromJson(json['union'] as Map<String, dynamic>),
      donatedPeople: json['donated_people'] as int,
      donatedItems: (json['donated_items'] as List<dynamic>)
          .map((e) => DonationItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DonatedUnionResponseImplToJson(
        _$DonatedUnionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'union': instance.union,
      'donated_people': instance.donatedPeople,
      'donated_items': instance.donatedItems,
    };
