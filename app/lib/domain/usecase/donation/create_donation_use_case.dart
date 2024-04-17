import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/model/donation/donated_location.dart';
import 'package:relief_tracker/domain/model/donation/donor_request.dart';
import 'package:relief_tracker/domain/repository/donation_repository.dart';

class CreateDonationUseCase {
  final DonationRepository _donationRepository;

  const CreateDonationUseCase({
    required DonationRepository donationRepository,
  }) : _donationRepository = donationRepository;

  Future<Result<void>> call({
    required String title,
    required String description,
    required int disasterId,
    required List<DonorRequestModel> donors,
    required List<DonatedDistrict> donatedDistricts,
    required List<DonatedUpazila> donatedUpazilas,
    required List<DonatedUnion> donatedUnions,
    required List<String> images,
    required List<String> videos,
  }) async {
    return _donationRepository
        .createDonationReport(
          title: title,
          description: description,
          disasterId: disasterId,
          donors: donors,
          donatedDistricts: donatedDistricts,
          donatedUpazilas: donatedUpazilas,
          donatedUnions: donatedUnions,
          images: images,
          videos: videos,
        )
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
