// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donated_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonatedItemRequestImpl _$$DonatedItemRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DonatedItemRequestImpl(
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      unit: json['unit'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$DonatedItemRequestImplToJson(
        _$DonatedItemRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'description': instance.description,
    };
