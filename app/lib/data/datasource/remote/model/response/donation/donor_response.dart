import 'package:freezed_annotation/freezed_annotation.dart';

part 'donor_response.freezed.dart';
part 'donor_response.g.dart';

@freezed
class DonorResponse with _$DonorResponse {
  const factory DonorResponse({
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
  }) = _DonorResponse;

  factory DonorResponse.fromJson(Map<String, dynamic> json) =>
      _$DonorResponseFromJson(json);
}
