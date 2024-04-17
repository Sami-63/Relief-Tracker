import 'package:relief_tracker/data/repository/source/remote/donation_remote_data_source.dart';
import 'package:relief_tracker/domain/model/donation/donated_location.dart';
import 'package:relief_tracker/domain/model/donation/donation.dart';
import 'package:relief_tracker/domain/model/donation/donor_request.dart';
import 'package:relief_tracker/domain/model/paginated_data.dart';
import 'package:relief_tracker/domain/model/query_params.dart';
import 'package:relief_tracker/domain/repository/donation_repository.dart';

class DonationRepositoryImpl implements DonationRepository {
  final DonationRemoteDataSource _donationDataSource;

  DonationRepositoryImpl({required DonationRemoteDataSource donationDataSource})
      : _donationDataSource = donationDataSource;

  @override
  Future<void> createDonationReport({
    required String title,
    required String description,
    required int disasterId,
    required List<DonorRequestModel> donors,
    required List<DonatedDistrict> donatedDistricts,
    required List<DonatedUpazila> donatedUpazilas,
    required List<DonatedUnion> donatedUnions,
    required List<String> images,
    required List<String> videos,
  }) {
    return _donationDataSource.createDonationReport(
      title: title,
      description: description,
      disasterId: disasterId,
      donors: donors,
      donatedDistricts: donatedDistricts,
      donatedUpazilas: donatedUpazilas,
      donatedUnions: donatedUnions,
      images: images,
      videos: videos,
    );
  }

  @override
  Future<PaginatedData<Donation>> getDonationReports({
    required bool myDonations,
    required List<QueryParam> queryParams,
  }) {
    return _donationDataSource.getDonationReports(
      myDonations: myDonations,
      queryParams: queryParams,
    );
  }

  @override
  Future<Donation> getDonationReportById({required int id}) {
    return _donationDataSource.getDonationReportById(id: id);
  }

  @override
  Future<Donation> updateDonationReportState({
    required int id,
    required String state,
  }) {
    return _donationDataSource.updateDonationReportState(id: id, state: state);
  }
}
