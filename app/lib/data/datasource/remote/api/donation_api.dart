import 'package:relief_tracker/data/datasource/remote/model/request/donation/donation_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/common/paginated_data_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/donation/donation_response.dart';
import 'package:relief_tracker/domain/model/query_params.dart';

abstract class DonationApi {
  Future<DonationResponse> createDonationReport({
    required DonationRequest donationCreateRequest,
  });

  Future<PaginatedDataResponse<DonationResponse>> getDonationReports({
    required bool myDonations,
    required List<QueryParam> queryParams,
  });

  Future<DonationResponse> getDonationReportById({
    required int id,
  });

  Future<DonationResponse> updateDonationReportState({
    required int id,
    required String state,
  });
}
