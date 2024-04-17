import 'package:relief_tracker/domain/model/location/district.dart';
import 'package:relief_tracker/domain/model/location/union.dart';
import 'package:relief_tracker/domain/model/location/upazila.dart';

class AffectedDistrict {
  final District district;
  final int affectedPeople;

  AffectedDistrict({
    required this.district,
    required this.affectedPeople,
  });
}

class AffectedUpazila {
  final Upazila upazila;
  final int affectedPeople;

  AffectedUpazila({
    required this.upazila,
    required this.affectedPeople,
  });
}

class AffectedUnion {
  final Union union;
  final int affectedPeople;

  AffectedUnion({
    required this.union,
    required this.affectedPeople,
  });
}

class OtherAffectedLocation {
  final String location;
  final int affectedPeople;

  OtherAffectedLocation({
    required this.location,
    required this.affectedPeople,
  });
}
