import 'package:freezed_annotation/freezed_annotation.dart';

part 'affected_upazila_request.freezed.dart';
part 'affected_upazila_request.g.dart';

@freezed
class AffectedUpazilaRequest with _$AffectedUpazilaRequest {
  const factory AffectedUpazilaRequest({
    @JsonKey(name: 'upazila') required int upazila,
    @JsonKey(name: 'affected_people') required int affectedPeople,
  }) = _AffectedUpazilaRequest;

  factory AffectedUpazilaRequest.fromJson(Map<String, dynamic> json) =>
      _$AffectedUpazilaRequestFromJson(json);
}
