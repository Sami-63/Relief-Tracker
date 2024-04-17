import 'package:relief_tracker/domain/model/location/upazila.dart';

class Union {
  final int id;
  final String name;
  final String banglaName;
  final double? latitude;
  final double? longitude;
  final Upazila upazila;

  Union({
    required this.id,
    required this.name,
    required this.banglaName,
    this.latitude,
    this.longitude,
    required this.upazila,
  });
}
