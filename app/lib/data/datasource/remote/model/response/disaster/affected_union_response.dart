import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/union_response.dart';

part 'affected_union_response.freezed.dart';
part 'affected_union_response.g.dart';

@freezed
class AffectedUnionResponse with _$AffectedUnionResponse {
  const factory AffectedUnionResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'union') required UnionResponse union,
    @JsonKey(name: 'affected_people') required int affectedPeople,
  }) = _AffectedUnionResponse;

  factory AffectedUnionResponse.fromJson(Map<String, dynamic> json) =>
      _$AffectedUnionResponseFromJson(json);
}
