// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonationRequestImpl _$$DonationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DonationRequestImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      disaster: json['disaster'] as int,
      donors: (json['donors'] as List<dynamic>)
          .map((e) => DonorRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      donatedDistricts: (json['donated_districts'] as List<dynamic>)
          .map(
              (e) => DonatedDistrictRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      donatedUpazilas: (json['donated_upazilas'] as List<dynamic>)
          .map((e) => DonatedUpazilaRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      donatedUnions: (json['donated_unions'] as List<dynamic>)
          .map((e) => DonatedUnionRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      videos:
          (json['videos'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$DonationRequestImplToJson(
        _$DonationRequestImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'disaster': instance.disaster,
      'donors': instance.donors,
      'donated_districts': instance.donatedDistricts,
      'donated_upazilas': instance.donatedUpazilas,
      'donated_unions': instance.donatedUnions,
      'images': instance.images,
      'videos': instance.videos,
    };
