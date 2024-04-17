import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/donation/donated_item_request.dart';

part 'donated_union_request.freezed.dart';
part 'donated_union_request.g.dart';

@freezed
class DonatedUnionRequest with _$DonatedUnionRequest {
  const factory DonatedUnionRequest({
    @JsonKey(name: 'union') required int union,
    @JsonKey(name: 'donated_people') required int donatedPeople,
    @JsonKey(name: 'donated_items')
    required List<DonatedItemRequest> donatedItems,
  }) = _DonatedUnionRequest;

  factory DonatedUnionRequest.fromJson(Map<String, dynamic> json) =>
      _$DonatedUnionRequestFromJson(json);
}
