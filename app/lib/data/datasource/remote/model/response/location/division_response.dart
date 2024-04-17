import 'package:freezed_annotation/freezed_annotation.dart';

part 'division_response.freezed.dart';
part 'division_response.g.dart';

@freezed
class DivisionResponse with _$DivisionResponse {
  const factory DivisionResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'bangla_name') required String banglaName,
  }) = _DivisionResponse;

  factory DivisionResponse.fromJson(Map<String, dynamic> json) =>
      _$DivisionResponseFromJson(json);
}
