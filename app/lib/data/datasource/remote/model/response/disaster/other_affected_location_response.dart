import 'package:freezed_annotation/freezed_annotation.dart';

part 'other_affected_location_response.freezed.dart';
part 'other_affected_location_response.g.dart';

@freezed
class OtherAffectedLocationResponse with _$OtherAffectedLocationResponse {
  const factory OtherAffectedLocationResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'location') required String location,
    @JsonKey(name: 'affected_people') required int affectedPeople,
  }) = _OtherAffectedLocationResponse;

  factory OtherAffectedLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$OtherAffectedLocationResponseFromJson(json);
}
