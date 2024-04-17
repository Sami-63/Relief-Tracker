import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/model/donation/donation.dart';
import 'package:relief_tracker/domain/model/paginated_data.dart';
import 'package:relief_tracker/domain/model/query_params.dart';
import 'package:relief_tracker/domain/repository/donation_repository.dart';

class GetDonationsUseCase {
  final DonationRepository _donationRepository;

  const GetDonationsUseCase({
    required DonationRepository donationRepository,
  }) : _donationRepository = donationRepository;

  Future<Result<PaginatedData<Donation>>> call({
    required List<QueryParam> queryParams,
    required bool myDonations,
  }) async {
    return _donationRepository
        .getDonationReports(myDonations: myDonations, queryParams: queryParams)
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
