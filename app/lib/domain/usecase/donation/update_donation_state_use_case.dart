import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/model/donation/donation.dart';
import 'package:relief_tracker/domain/repository/donation_repository.dart';

class UpdateDonationStateUseCase {
  final DonationRepository _donationRepository;

  const UpdateDonationStateUseCase({
    required DonationRepository donationRepository,
  }) : _donationRepository = donationRepository;

  Future<Result<Donation>> call({
    required String state,
    required int id,
  }) async {
    return _donationRepository
        .updateDonationReportState(
          state: state,
          id: id,
        )
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
