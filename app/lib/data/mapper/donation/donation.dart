import 'package:relief_tracker/data/datasource/remote/model/response/donation/donation_item_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/donation/donation_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/donation/donor_response.dart';
import 'package:relief_tracker/data/mapper/donation/donation_location_mapper.dart';
import 'package:relief_tracker/domain/model/donation/donation.dart';

extension DonationMapper on DonationResponse {
  Donation toDonation() {
    return Donation(
      id: id,
      title: title,
      description: description,
      disaster: disaster,
      createdBy: createdBy.toDonor(),
      images: images,
      videos: videos,
      state: state,
      donors: donors.map((e) => e.toDonor()).toList(),
      donatedDistricts:
          donatedDistricts.map((e) => e.toDonatedDistrict()).toList(),
      donatedUpazilas:
          donatedUpazilas.map((e) => e.toDonatedUpazila()).toList(),
      donatedUnions: donatedUnions.map((e) => e.toDonatedUnion()).toList(),
      createdAt: createdAt,
      modifiedAt: modifiedAt,
    );
  }
}

extension DonorMapper on DonorResponse {
  DonationDonor toDonor() {
    return DonationDonor(
      username: username,
      email: email,
      firstName: firstName,
      lastName: lastName,
    );
  }
}

extension DonatedItemMapper on DonationItemResponse {
  DonatedItem toDonationItem() {
    return DonatedItem(
      id: id,
      name: name,
      quantity: quantity,
      unit: unit,
      description: description,
    );
  }
}
