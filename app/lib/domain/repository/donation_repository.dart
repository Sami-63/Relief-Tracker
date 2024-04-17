import 'package:relief_tracker/domain/model/donation/donated_location.dart';
import 'package:relief_tracker/domain/model/donation/donation.dart';
import 'package:relief_tracker/domain/model/donation/donor_request.dart';
import 'package:relief_tracker/domain/model/paginated_data.dart';
import 'package:relief_tracker/domain/model/query_params.dart';

abstract class DonationRepository {
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
  });

  Future<PaginatedData<Donation>> getDonationReports({
    required bool myDonations,
    required List<QueryParam> queryParams,
  });

  Future<Donation> getDonationReportById({
    required int id,
  });

  Future<Donation> updateDonationReportState({
    required int id,
    required String state,
  });
}
