import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/donation/donation_item_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/union_response.dart';

part 'donated_union_response.freezed.dart';
part 'donated_union_response.g.dart';

@freezed
class DonatedUnionResponse with _$DonatedUnionResponse {
  const factory DonatedUnionResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'union') required UnionResponse union,
    @JsonKey(name: 'donated_people') required int donatedPeople,
    @JsonKey(name: 'donated_items')
    required List<DonationItemResponse> donatedItems,
  }) = _DonatedUnionResponse;

  factory DonatedUnionResponse.fromJson(Map<String, dynamic> json) =>
      _$DonatedUnionResponseFromJson(json);
}
