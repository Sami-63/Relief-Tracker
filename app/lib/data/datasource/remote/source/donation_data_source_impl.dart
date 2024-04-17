import 'package:relief_tracker/data/datasource/remote/api/donation_api.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/donation/donated_district_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/donation/donated_item_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/donation/donated_union_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/donation/donated_upazila_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/donation/donation_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/donation/donor_request.dart';
import 'package:relief_tracker/data/mapper/donation/donation.dart';
import 'package:relief_tracker/data/mapper/paginated_data_mapper.dart';
import 'package:relief_tracker/data/repository/source/remote/donation_remote_data_source.dart';
import 'package:relief_tracker/domain/model/donation/donated_location.dart';
import 'package:relief_tracker/domain/model/donation/donation.dart';
import 'package:relief_tracker/domain/model/donation/donor_request.dart';
import 'package:relief_tracker/domain/model/paginated_data.dart';
import 'package:relief_tracker/domain/model/query_params.dart';

class DonationRemoteDataSourceImpl implements DonationRemoteDataSource {
  final DonationApi _donationApi;

  DonationRemoteDataSourceImpl({
    required DonationApi donationApi,
  }) : _donationApi = donationApi;

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
    final List<DonorRequest> donorRequest = [];
    for (var donor in donors) {
      donorRequest.add(DonorRequest(
        username: donor.username,
      ));
    }

    final List<DonatedDistrictRequest> donatedDistrictsRequest = [];
    for (var donatedDistrict in donatedDistricts) {
      donatedDistrictsRequest.add(DonatedDistrictRequest(
        district: donatedDistrict.district.id,
        donatedPeople: donatedDistrict.donatedPeople,
        donatedItems: donatedDistrict.donatedItems
            .map((e) => DonatedItemRequest(
                  name: e.name,
                  quantity: e.quantity,
                  unit: e.unit,
                  description: e.description,
                ))
            .toList(),
      ));
    }

    final List<DonatedUpazilaRequest> donatedUpazilasRequest = [];
    for (var donatedUpazila in donatedUpazilas) {
      donatedUpazilasRequest.add(DonatedUpazilaRequest(
        upazila: donatedUpazila.upazila.id,
        donatedPeople: donatedUpazila.donatedPeople,
        donatedItems: donatedUpazila.donatedItems
            .map((e) => DonatedItemRequest(
                  name: e.name,
                  quantity: e.quantity,
                  unit: e.unit,
                  description: e.description,
                ))
            .toList(),
      ));
    }

    final List<DonatedUnionRequest> donatedUnionsRequest = [];
    for (var donatedUnion in donatedUnions) {
      donatedUnionsRequest.add(DonatedUnionRequest(
        union: donatedUnion.union.id,
        donatedPeople: donatedUnion.donatedPeople,
        donatedItems: donatedUnion.donatedItems
            .map((e) => DonatedItemRequest(
                  name: e.name,
                  quantity: e.quantity,
                  unit: e.unit,
                  description: e.description,
                ))
            .toList(),
      ));
    }

    final request = DonationRequest(
      title: title,
      description: description,
      disaster: disasterId,
      donors: donorRequest,
      donatedDistricts: donatedDistrictsRequest,
      donatedUpazilas: donatedUpazilasRequest,
      donatedUnions: donatedUnionsRequest,
      images: images,
      videos: videos,
    );

    print('images = $images');

    return _donationApi.createDonationReport(donationCreateRequest: request);
  }

  @override
  Future<PaginatedData<Donation>> getDonationReports({
    required bool myDonations,
    required List<QueryParam> queryParams,
  }) async {
    final response = await _donationApi.getDonationReports(
      myDonations: myDonations,
      queryParams: queryParams,
    );

    return response.toPaginatedData((json) => json.toDonation());
  }

  @override
  Future<Donation> getDonationReportById({required int id}) async {
    final response = await _donationApi.getDonationReportById(id: id);

    return response.toDonation();
  }

  @override
  Future<Donation> updateDonationReportState({
    required int id,
    required String state,
  }) async {
    final response = await _donationApi.updateDonationReportState(
      id: id,
      state: state,
    );

    return response.toDonation();
  }
}
