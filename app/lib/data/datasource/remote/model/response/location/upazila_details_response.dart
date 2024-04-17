import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/union_response.dart';

part 'upazila_details_response.freezed.dart';
part 'upazila_details_response.g.dart';

@freezed
class UpazilaDetailsResponse with _$UpazilaDetailsResponse {
  const factory UpazilaDetailsResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'bangla_name') required String banglaName,
    @JsonKey(name: 'latitude') required double? latitude,
    @JsonKey(name: 'longitude') required double? longitude,
    @JsonKey(name: 'unions') required List<UnionResponse> unions,
  }) = _UpazilaDetailsResponse;

  factory UpazilaDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$UpazilaDetailsResponseFromJson(json);
}
