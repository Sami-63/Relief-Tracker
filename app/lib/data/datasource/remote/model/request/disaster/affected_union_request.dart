import 'package:freezed_annotation/freezed_annotation.dart';

part 'affected_union_request.freezed.dart';
part 'affected_union_request.g.dart';

@freezed
class AffectedUnionRequest with _$AffectedUnionRequest {
  const factory AffectedUnionRequest({
    @JsonKey(name: 'union') required int union,
    @JsonKey(name: 'affected_people') required int affectedPeople,
  }) = _AffectedUnionRequest;

  factory AffectedUnionRequest.fromJson(Map<String, dynamic> json) =>
      _$AffectedUnionRequestFromJson(json);
}
