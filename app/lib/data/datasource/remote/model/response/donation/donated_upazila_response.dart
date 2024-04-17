import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/donation/donation_item_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/upazila_response.dart';

part 'donated_upazila_response.freezed.dart';
part 'donated_upazila_response.g.dart';

@freezed
class DonatedUpazilaResponse with _$DonatedUpazilaResponse {
  const factory DonatedUpazilaResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'upazila') required UpazilaResponse upazila,
    @JsonKey(name: 'donated_people') required int donatedPeople,
    @JsonKey(name: 'donated_items')
    required List<DonationItemResponse> donatedItems,
  }) = _DonatedUpazilaResponse;

  factory DonatedUpazilaResponse.fromJson(Map<String, dynamic> json) =>
      _$DonatedUpazilaResponseFromJson(json);
}
