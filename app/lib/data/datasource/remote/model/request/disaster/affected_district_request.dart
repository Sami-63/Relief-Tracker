import 'package:freezed_annotation/freezed_annotation.dart';

part 'affected_district_request.freezed.dart';
part 'affected_district_request.g.dart';

@freezed
class AffectedDistrictRequest with _$AffectedDistrictRequest {
  const factory AffectedDistrictRequest({
    @JsonKey(name: 'district') required int district,
    @JsonKey(name: 'affected_people') required int affectedPeople,
  }) = _AffectedDistrictRequest;

  factory AffectedDistrictRequest.fromJson(Map<String, dynamic> json) =>
      _$AffectedDistrictRequestFromJson(json);
}
