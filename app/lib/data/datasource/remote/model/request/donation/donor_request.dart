import 'package:freezed_annotation/freezed_annotation.dart';

part 'donor_request.freezed.dart';
part 'donor_request.g.dart';

@freezed
class DonorRequest with _$DonorRequest {
  const factory DonorRequest({
    @JsonKey(name: 'username') required String username,
  }) = _DonorRequest;

  factory DonorRequest.fromJson(Map<String, dynamic> json) =>
      _$DonorRequestFromJson(json);
}
