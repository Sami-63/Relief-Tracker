import 'package:freezed_annotation/freezed_annotation.dart';

part 'other_affected_location_request.freezed.dart';
part 'other_affected_location_request.g.dart';

@freezed
class OtherAffectedLocationRequest with _$OtherAffectedLocationRequest {
  const factory OtherAffectedLocationRequest({
    @JsonKey(name: 'location') required String location,
    @JsonKey(name: 'affected_people') required int affectedPeople,
  }) = _OtherAffectedLocationRequest;

  factory OtherAffectedLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$OtherAffectedLocationRequestFromJson(json);
}
