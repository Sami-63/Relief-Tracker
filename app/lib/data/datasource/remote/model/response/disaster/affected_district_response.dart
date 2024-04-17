import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/district_response.dart';

part 'affected_district_response.freezed.dart';
part 'affected_district_response.g.dart';

@freezed
class AffectedDistrictResponse with _$AffectedDistrictResponse {
  const factory AffectedDistrictResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'district') required DistrictResponse district,
    @JsonKey(name: 'affected_people') required int affectedPeople,
  }) = _AffectedDistrictResponse;

  factory AffectedDistrictResponse.fromJson(Map<String, dynamic> json) =>
      _$AffectedDistrictResponseFromJson(json);
}
