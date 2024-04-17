import 'package:relief_tracker/domain/model/donation/donated_location.dart';

class DonationDonor {
  final String username;
  final String email;
  final String firstName;
  final String lastName;

  DonationDonor({
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
  });
}

class Donation {
  final int id;
  final String title;
  final String description;
  final String state;
  final DonationDonor createdBy;
  final int disaster;
  final List<String> images;
  final List<String> videos;
  final String createdAt;
  final String modifiedAt;
  final List<DonationDonor> donors;
  final List<DonatedDistrict> donatedDistricts;
  final List<DonatedUpazila> donatedUpazilas;
  final List<DonatedUnion> donatedUnions;

  Donation({
    required this.id,
    required this.title,
    required this.description,
    required this.state,
    required this.createdBy,
    required this.disaster,
    required this.images,
    required this.videos,
    required this.createdAt,
    required this.modifiedAt,
    required this.donors,
    required this.donatedDistricts,
    required this.donatedUpazilas,
    required this.donatedUnions,
  });
}

class DonatedItem {
  final int id;
  final String name;
  final double quantity;
  final String unit;
  final String? description;

  DonatedItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.unit,
    this.description,
  });
}
