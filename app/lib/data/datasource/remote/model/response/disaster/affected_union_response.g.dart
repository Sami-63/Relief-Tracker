// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affected_union_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AffectedUnionResponseImpl _$$AffectedUnionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AffectedUnionResponseImpl(
      id: json['id'] as int,
      union: UnionResponse.fromJson(json['union'] as Map<String, dynamic>),
      affectedPeople: json['affected_people'] as int,
    );

Map<String, dynamic> _$$AffectedUnionResponseImplToJson(
        _$AffectedUnionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'union': instance.union,
      'affected_people': instance.affectedPeople,
    };
