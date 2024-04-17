import 'package:relief_tracker/domain/model/location/upazila.dart';

import 'division.dart';

class District {
  final int id;
  final String name;
  final String banglaName;
  final double? latitude;
  final double? longitude;
  Division division;

  District({
    required this.id,
    required this.name,
    required this.banglaName,
    this.latitude,
    this.longitude,
    required this.division,
  });
}

class DistrictDetails {
  final int id;
  final String name;
  final String banglaName;
  final double? latitude;
  final double? longitude;
  final List<Upazila> upazilas;

  DistrictDetails({
    required this.id,
    required this.name,
    required this.banglaName,
    this.latitude,
    this.longitude,
    required this.upazilas,
  });
}