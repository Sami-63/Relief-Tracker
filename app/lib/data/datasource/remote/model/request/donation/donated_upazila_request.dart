import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/donation/donated_item_request.dart';

part 'donated_upazila_request.freezed.dart';
part 'donated_upazila_request.g.dart';

@freezed
class DonatedUpazilaRequest with _$DonatedUpazilaRequest {
  const factory DonatedUpazilaRequest({
    @JsonKey(name: 'upazila') required int upazila,
    @JsonKey(name: 'donated_people') required int donatedPeople,
    @JsonKey(name: 'donated_items')
    required List<DonatedItemRequest> donatedItems,
  }) = _DonatedUpazilaRequest;

  factory DonatedUpazilaRequest.fromJson(Map<String, dynamic> json) =>
      _$DonatedUpazilaRequestFromJson(json);
}
