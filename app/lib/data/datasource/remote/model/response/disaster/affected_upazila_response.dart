import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/upazila_response.dart';

part 'affected_upazila_response.freezed.dart';
part 'affected_upazila_response.g.dart';

@freezed
class AffectedUpazilaResponse with _$AffectedUpazilaResponse {
  const factory AffectedUpazilaResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'upazila') required UpazilaResponse upazila,
    @JsonKey(name: 'affected_people') required int affectedPeople,
  }) = _AffectedUpazilaResponse;

  factory AffectedUpazilaResponse.fromJson(Map<String, dynamic> json) =>
      _$AffectedUpazilaResponseFromJson(json);
}
