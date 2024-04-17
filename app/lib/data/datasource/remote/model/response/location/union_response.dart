import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/upazila_response.dart';

part 'union_response.freezed.dart';
part 'union_response.g.dart';

@freezed
class UnionResponse with _$UnionResponse {
  const factory UnionResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'bangla_name') required String banglaName,
    @JsonKey(name: 'latitude') required double? latitude,
    @JsonKey(name: 'longitude') required double? longitude,
    @JsonKey(name: 'upazila') required UpazilaResponse upazila,
  }) = _UnionResponse;

  factory UnionResponse.fromJson(Map<String, dynamic> json) =>
      _$UnionResponseFromJson(json);
}
