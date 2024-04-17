import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/division_response.dart';

part 'district_response.freezed.dart';
part 'district_response.g.dart';

@freezed
class DistrictResponse with _$DistrictResponse {
  const factory DistrictResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'bangla_name') required String banglaName,
    @JsonKey(name: 'latitude') required double? latitude,
    @JsonKey(name: 'longitude') required double? longitude,
    @JsonKey(name: 'division') required DivisionResponse division,
  }) = _DistrictResponse;

  factory DistrictResponse.fromJson(Map<String, dynamic> json) =>
      _$DistrictResponseFromJson(json);
}
