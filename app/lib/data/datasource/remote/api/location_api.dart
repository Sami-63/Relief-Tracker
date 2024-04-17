import 'package:relief_tracker/data/datasource/remote/model/response/common/paginated_data_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/district_details_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/district_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/division_details_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/division_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/union_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/upazila_details_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/upazila_response.dart';
import 'package:relief_tracker/domain/model/query_params.dart';

abstract class LocationApi {
  Future<PaginatedDataResponse<DistrictResponse>> getDistricts({
    required List<QueryParam> queryParams,
  });

  Future<PaginatedDataResponse<UpazilaResponse>> getUpazilas({
    required List<QueryParam> queryParams,
  });

  Future<PaginatedDataResponse<UnionResponse>> getUnions({
    required List<QueryParam> queryParams,
  });

  Future<PaginatedDataResponse<DivisionResponse>> getDivisions({
    required List<QueryParam> queryParams,
  });

  Future<DivisionDetailsResponse> getDivisionDetails({
    required int divisionId,
  });

  Future<DistrictDetailsResponse> getDistrictDetails({
    required int districtId,
  });

  Future<UpazilaDetailsResponse> getUpazilaDetails({
    required int upazilaId,
  });
}
