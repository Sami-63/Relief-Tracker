import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/donation/donation_item_response.dart';

part 'other_donated_location_response.freezed.dart';
part 'other_donated_location_response.g.dart';

@freezed
class OtherDonatedLocationResponse with _$OtherDonatedLocationResponse {
  const factory OtherDonatedLocationResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'location') required String location,
    @JsonKey(name: 'donated_people') required int donatedPeople,
    @JsonKey(name: 'latitude') required double? latitude,
    @JsonKey(name: 'longitude') required double? longitude,
    @JsonKey(name: 'donated_items')
    required List<DonationItemResponse> donatedItems,
  }) = _OtherDonatedLocationResponse;

  factory OtherDonatedLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$OtherDonatedLocationResponseFromJson(json);
}
