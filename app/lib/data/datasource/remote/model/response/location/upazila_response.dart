import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/district_response.dart';

part 'upazila_response.freezed.dart';
part 'upazila_response.g.dart';

@freezed
class UpazilaResponse with _$UpazilaResponse {
  const factory UpazilaResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'bangla_name') required String banglaName,
    @JsonKey(name: 'latitude') required double? latitude,
    @JsonKey(name: 'longitude') required double? longitude,
    @JsonKey(name: 'district') required DistrictResponse district,
  }) = _UpazilaResponse;

  factory UpazilaResponse.fromJson(Map<String, dynamic> json) =>
      _$UpazilaResponseFromJson(json);
}
