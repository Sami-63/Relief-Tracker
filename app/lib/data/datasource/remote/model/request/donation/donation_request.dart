import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/donation/donated_district_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/donation/donated_union_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/donation/donated_upazila_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/donation/donor_request.dart';

part 'donation_request.freezed.dart';
part 'donation_request.g.dart';

@freezed
class DonationRequest with _$DonationRequest {
  const factory DonationRequest({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'disaster') required int disaster,
    @JsonKey(name: 'donors') required List<DonorRequest> donors,
    @JsonKey(name: 'donated_districts')
    required List<DonatedDistrictRequest> donatedDistricts,
    @JsonKey(name: 'donated_upazilas')
    required List<DonatedUpazilaRequest> donatedUpazilas,
    @JsonKey(name: 'donated_unions')
    required List<DonatedUnionRequest> donatedUnions,
    @JsonKey(name: 'images') required List<String> images,
    @JsonKey(name: 'videos') required List<String> videos,
  }) = _DonationRequest;

  factory DonationRequest.fromJson(Map<String, dynamic> json) =>
      _$DonationRequestFromJson(json);
}
