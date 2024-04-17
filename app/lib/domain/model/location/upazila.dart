import 'package:relief_tracker/domain/model/location/district.dart';
import 'package:relief_tracker/domain/model/location/union.dart';

class Upazila {
  final int id;
  final String name;
  final String banglaName;
  final double? latitude;
  final double? longitude;
  final District district;

  Upazila({
    required this.id,
    required this.name,
    required this.banglaName,
    this.latitude,
    this.longitude,
    required this.district,
  });
}

class UpazilaDetails {
  final int id;
  final String name;
  final String banglaName;
  final double? latitude;
  final double? longitude;
  final List<Union> unions;

  UpazilaDetails({
    required this.id,
    required this.name,
    required this.banglaName,
    this.latitude,
    this.longitude,
    required this.unions,
  });
}