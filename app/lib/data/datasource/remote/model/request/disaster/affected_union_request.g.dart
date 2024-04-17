// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affected_union_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AffectedUnionRequestImpl _$$AffectedUnionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AffectedUnionRequestImpl(
      union: json['union'] as int,
      affectedPeople: json['affected_people'] as int,
    );

Map<String, dynamic> _$$AffectedUnionRequestImplToJson(
        _$AffectedUnionRequestImpl instance) =>
    <String, dynamic>{
      'union': instance.union,
      'affected_people': instance.affectedPeople,
    };
