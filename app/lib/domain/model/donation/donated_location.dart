import 'package:relief_tracker/domain/model/donation/donation.dart';
import 'package:relief_tracker/domain/model/location/district.dart';
import 'package:relief_tracker/domain/model/location/union.dart';
import 'package:relief_tracker/domain/model/location/upazila.dart';

class DonatedDistrict {
  final int id;
  final District district;
  final int donatedPeople;
  final List<DonatedItem> donatedItems;

  DonatedDistrict({
    required this.id,
    required this.district,
    required this.donatedPeople,
    required this.donatedItems,
  });
}

class DonatedUpazila {
  final int id;
  final Upazila upazila;
  final int donatedPeople;
  final List<DonatedItem> donatedItems;

  DonatedUpazila({
    required this.id,
    required this.upazila,
    required this.donatedPeople,
    required this.donatedItems,
  });
}

class DonatedUnion {
  final int id;
  final Union union;
  final int donatedPeople;
  final List<DonatedItem> donatedItems;

  DonatedUnion({
    required this.id,
    required this.union,
    required this.donatedPeople,
    required this.donatedItems,
  });
}

class OtherDonatedLocation {
  final int id;
  final String location;
  final int donatedPeople;
  final double? latitude;
  final double? longitude;
  final List<DonatedItem> donatedItems;

  OtherDonatedLocation({
    required this.id,
    required this.location,
    required this.donatedPeople,
    this.latitude,
    this.longitude,
    required this.donatedItems,
  });
}
