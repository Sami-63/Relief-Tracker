import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/donation/donated_item_request.dart';

part 'other_donated_location_request.freezed.dart';
part 'other_donated_location_request.g.dart';

@freezed
class OtherDonatedLocationRequest with _$OtherDonatedLocationRequest {
  const factory OtherDonatedLocationRequest({
    @JsonKey(name: 'location') required String location,
    @JsonKey(name: 'donated_people') required int donatedPeople,
    @JsonKey(name: 'latitude') required double? latitude,
    @JsonKey(name: 'longitude') required double? longitude,
    @JsonKey(name: 'donated_items')
    required List<DonatedItemRequest> donatedItems,
  }) = _OtherDonatedLocationRequest;

  factory OtherDonatedLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$OtherDonatedLocationRequestFromJson(json);
}
