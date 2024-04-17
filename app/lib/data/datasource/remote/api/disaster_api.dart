import 'package:relief_tracker/data/datasource/remote/model/request/disaster/affected_district_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/disaster/affected_union_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/disaster/affected_upazila_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/common/paginated_data_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/disaster/disaster_response.dart';
import 'package:relief_tracker/domain/model/query_params.dart';

abstract class DisasterApi {
  Future<DisasterResponse> createDisaster({
    required String title,
    required String description,
    required String startTime,
    required String? endTime,
    required List<AffectedDistrictRequest> affectedDistricts,
    required List<AffectedUpazilaRequest> affectedUpazilas,
    required List<AffectedUnionRequest> affectedUnions,
    required List<String> images,
  });

  Future<PaginatedDataResponse<DisasterResponse>> fetchDisasters({
    required List<QueryParam> queryParams,
  });

  Future<DisasterResponse> fetchDisaster({required int id});

  Future<List<String>> uploadImages({required List<String> imagePaths});
}
