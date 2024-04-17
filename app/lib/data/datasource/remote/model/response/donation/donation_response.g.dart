// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonationResponseImpl _$$DonationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DonationResponseImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      state: json['state'] as String,
      createdBy:
          DonorResponse.fromJson(json['created_by'] as Map<String, dynamic>),
      disaster: json['disaster'] as int,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      videos:
          (json['videos'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: json['created_at'] as String,
      modifiedAt: json['modified_at'] as String,
      donors: (json['donors'] as List<dynamic>)
          .map((e) => DonorResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      donatedDistricts: (json['donated_districts'] as List<dynamic>)
          .map((e) =>
              DonatedDistrictResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      donatedUpazilas: (json['donated_upazilas'] as List<dynamic>)
          .map(
              (e) => DonatedUpazilaResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      donatedUnions: (json['donated_unions'] as List<dynamic>)
          .map((e) => DonatedUnionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DonationResponseImplToJson(
        _$DonationResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'state': instance.state,
      'created_by': instance.createdBy,
      'disaster': instance.disaster,
      'images': instance.images,
      'videos': instance.videos,
      'created_at': instance.createdAt,
      'modified_at': instance.modifiedAt,
      'donors': instance.donors,
      'donated_districts': instance.donatedDistricts,
      'donated_upazilas': instance.donatedUpazilas,
      'donated_unions': instance.donatedUnions,
    };
