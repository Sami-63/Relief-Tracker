import 'package:freezed_annotation/freezed_annotation.dart';

part 'donation_item_response.freezed.dart';
part 'donation_item_response.g.dart';

@freezed
class DonationItemResponse with _$DonationItemResponse {
  const factory DonationItemResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'quantity') required double quantity,
    @JsonKey(name: 'unit') required String unit,
    @JsonKey(name: 'description') required String? description,
  }) = _DonationItemResponse;

  factory DonationItemResponse.fromJson(Map<String, dynamic> json) =>
      _$DonationItemResponseFromJson(json);
}
