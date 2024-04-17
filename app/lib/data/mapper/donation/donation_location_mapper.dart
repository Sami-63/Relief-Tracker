import 'package:relief_tracker/data/datasource/remote/model/response/donation/donated_district_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/donation/donated_union_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/donation/donated_upazila_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/donation/other_donated_location_response.dart';
import 'package:relief_tracker/data/mapper/donation/donation.dart';
import 'package:relief_tracker/data/mapper/location/district_mapper.dart';
import 'package:relief_tracker/data/mapper/location/union_mapper.dart';
import 'package:relief_tracker/data/mapper/location/upazila_mapper.dart';
import 'package:relief_tracker/domain/model/donation/donated_location.dart';

extension DonatedDistrictMapper on DonatedDistrictResponse {
  DonatedDistrict toDonatedDistrict() {
    return DonatedDistrict(
      id: id,
      district: district.toDistrict(),
      donatedPeople: donatedPeople,
      donatedItems: donatedItems.map((e) => e.toDonationItem()).toList(),
    );
  }
}

extension DonatedUpazilaMapper on DonatedUpazilaResponse {
  DonatedUpazila toDonatedUpazila() {
    return DonatedUpazila(
      id: id,
      upazila: upazila.toUpazila(),
      donatedPeople: donatedPeople,
      donatedItems: donatedItems.map((e) => e.toDonationItem()).toList(),
    );
  }
}

extension DonatedUnionMapper on DonatedUnionResponse {
  DonatedUnion toDonatedUnion() {
    return DonatedUnion(
      id: id,
      union: union.toUnion(),
      donatedPeople: donatedPeople,
      donatedItems: donatedItems.map((e) => e.toDonationItem()).toList(),
    );
  }
}

extension OtherDonatedLocationMapper on OtherDonatedLocationResponse {
  OtherDonatedLocation toOtherDonatedLocation() {
    return OtherDonatedLocation(
      id: id,
      location: location,
      donatedPeople: donatedPeople,
      donatedItems: donatedItems.map((e) => e.toDonationItem()).toList(),
      longitude: longitude,
      latitude: latitude,
    );
  }
}
