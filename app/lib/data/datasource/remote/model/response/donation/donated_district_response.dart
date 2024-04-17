import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/donation/donation_item_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/district_response.dart';

part 'donated_district_response.freezed.dart';
part 'donated_district_response.g.dart';

@freezed
class DonatedDistrictResponse with _$DonatedDistrictResponse {
  const factory DonatedDistrictResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'district') required DistrictResponse district,
    @JsonKey(name: 'donated_people') required int donatedPeople,
    @JsonKey(name: 'donated_items')
    required List<DonationItemResponse> donatedItems,
  }) = _DonatedDistrictResponse;

  factory DonatedDistrictResponse.fromJson(Map<String, dynamic> json) =>
      _$DonatedDistrictResponseFromJson(json);
}
