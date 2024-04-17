// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_donated_location_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtherDonatedLocationRequestImpl _$$OtherDonatedLocationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$OtherDonatedLocationRequestImpl(
      location: json['location'] as String,
      donatedPeople: json['donated_people'] as int,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      donatedItems: (json['donated_items'] as List<dynamic>)
          .map((e) => DonatedItemRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OtherDonatedLocationRequestImplToJson(
        _$OtherDonatedLocationRequestImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'donated_people': instance.donatedPeople,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'donated_items': instance.donatedItems,
    };
