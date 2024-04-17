import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/disaster/affected_district_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/disaster/affected_union_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/disaster/affected_upazila_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/donation/donation_response.dart';

part 'disaster_response.freezed.dart';
part 'disaster_response.g.dart';

@freezed
class DisasterResponse with _$DisasterResponse {
  const factory DisasterResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String? endTime,
    @JsonKey(name: 'images') required List<String> images,
    @JsonKey(name: 'affected_districts')
    required List<AffectedDistrictResponse> affectedDistricts,
    @JsonKey(name: 'affected_upazilas')
    required List<AffectedUpazilaResponse> affectedUpazilas,
    @JsonKey(name: 'affected_unions')
    required List<AffectedUnionResponse> affectedUnions,
    @JsonKey(name: 'donations') required List<DonationResponse> donations,
  }) = _DisasterResponse;

  factory DisasterResponse.fromJson(Map<String, dynamic> json) =>
      _$DisasterResponseFromJson(json);
}
