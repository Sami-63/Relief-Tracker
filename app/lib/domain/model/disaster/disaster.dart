import 'package:relief_tracker/domain/model/disaster/affected_location.dart';
import 'package:relief_tracker/domain/model/donation/donation.dart';

class Disaster {
  final int id;
  final String title;
  final String description;
  final String startTime;
  final String? endTime;
  final List<String> images;
  final List<AffectedDistrict> affectedDistricts;
  final List<AffectedUpazila> affectedUpazilas;
  final List<AffectedUnion> affectedUnions;
  final List<Donation> donations;

  Disaster({
    required this.id,
    required this.title,
    required this.description,
    required this.startTime,
    required this.endTime,
    required this.images,
    required this.affectedDistricts,
    required this.affectedUpazilas,
    required this.affectedUnions,
    required this.donations,
  });
}
