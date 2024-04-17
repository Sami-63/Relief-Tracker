import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/donation/donated_item_request.dart';

part 'donated_district_request.freezed.dart';
part 'donated_district_request.g.dart';

@freezed
class DonatedDistrictRequest with _$DonatedDistrictRequest {
  const factory DonatedDistrictRequest({
    @JsonKey(name: 'district') required int district,
    @JsonKey(name: 'donated_people') required int donatedPeople,
    @JsonKey(name: 'donated_items')
    required List<DonatedItemRequest> donatedItems,
  }) = _DonatedDistrictRequest;

  factory DonatedDistrictRequest.fromJson(Map<String, dynamic> json) =>
      _$DonatedDistrictRequestFromJson(json);
}
