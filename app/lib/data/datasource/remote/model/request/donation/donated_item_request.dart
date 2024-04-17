import 'package:freezed_annotation/freezed_annotation.dart';

part 'donated_item_request.freezed.dart';
part 'donated_item_request.g.dart';

@freezed
class DonatedItemRequest with _$DonatedItemRequest {
  const factory DonatedItemRequest({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'quantity') required double quantity,
    @JsonKey(name: 'unit') required String unit,
    @JsonKey(name: 'description') required String? description,
  }) = _DonatedItemRequest;

  factory DonatedItemRequest.fromJson(Map<String, dynamic> json) =>
      _$DonatedItemRequestFromJson(json);
}
