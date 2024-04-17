// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_donated_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtherDonatedLocationResponseImpl _$$OtherDonatedLocationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OtherDonatedLocationResponseImpl(
      id: json['id'] as int,
      location: json['location'] as String,
      donatedPeople: json['donated_people'] as int,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      donatedItems: (json['donated_items'] as List<dynamic>)
          .map((e) => DonationItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OtherDonatedLocationResponseImplToJson(
        _$OtherDonatedLocationResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'donated_people': instance.donatedPeople,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'donated_items': instance.donatedItems,
    };
