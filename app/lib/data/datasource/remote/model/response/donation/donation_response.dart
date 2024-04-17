import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/donation/donated_district_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/donation/donated_union_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/donation/donated_upazila_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/donation/donor_response.dart';

part 'donation_response.freezed.dart';
part 'donation_response.g.dart';

@freezed
class DonationResponse with _$DonationResponse {
  const factory DonationResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'state') required String state,
    @JsonKey(name: 'created_by') required DonorResponse createdBy,
    @JsonKey(name: 'disaster') required int disaster,
    @JsonKey(name: 'images') required List<String> images,
    @JsonKey(name: 'videos') required List<String> videos,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'modified_at') required String modifiedAt,
    @JsonKey(name: 'donors') required List<DonorResponse> donors,
    @JsonKey(name: 'donated_districts')
    required List<DonatedDistrictResponse> donatedDistricts,
    @JsonKey(name: 'donated_upazilas')
    required List<DonatedUpazilaResponse> donatedUpazilas,
    @JsonKey(name: 'donated_unions')
    required List<DonatedUnionResponse> donatedUnions,
  }) = _DonationResponse;

  factory DonationResponse.fromJson(Map<String, dynamic> json) =>
      _$DonationResponseFromJson(json);
}
