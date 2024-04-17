import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/district_response.dart';

part 'division_details_response.freezed.dart';
part 'division_details_response.g.dart';

@freezed
class DivisionDetailsResponse with _$DivisionDetailsResponse {
  const factory DivisionDetailsResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'bangla_name') required String banglaName,
    @JsonKey(name: 'districts') required List<DistrictResponse> districts,
  }) = _DivisionDetailsResponse;

  factory DivisionDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$DivisionDetailsResponseFromJson(json);
}
