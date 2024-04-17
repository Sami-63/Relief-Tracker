// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonationItemResponseImpl _$$DonationItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DonationItemResponseImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      unit: json['unit'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$DonationItemResponseImplToJson(
        _$DonationItemResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'description': instance.description,
    };
