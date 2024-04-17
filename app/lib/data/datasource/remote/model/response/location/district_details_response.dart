import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/upazila_response.dart';

part 'district_details_response.freezed.dart';
part 'district_details_response.g.dart';

@freezed
class DistrictDetailsResponse with _$DistrictDetailsResponse {
  const factory DistrictDetailsResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'bangla_name') required String banglaName,
    @JsonKey(name: 'latitude') required double? latitude,
    @JsonKey(name: 'longitude') required double? longitude,
    @JsonKey(name: 'upazilas') required List<UpazilaResponse> upazilas,
  }) = _DistrictDetailsResponse;

  factory DistrictDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$DistrictDetailsResponseFromJson(json);
}
