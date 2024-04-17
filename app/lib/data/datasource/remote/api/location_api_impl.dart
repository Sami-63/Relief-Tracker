import 'package:dio/dio.dart';
import 'package:relief_tracker/data/datasource/local/source/account_local_data_source_impl.dart';
import 'package:relief_tracker/data/datasource/remote/api/location_api.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/common/paginated_data_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/district_details_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/district_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/division_details_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/division_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/union_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/upazila_details_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/upazila_response.dart';
import 'package:relief_tracker/data/datasource/remote/utils/config.dart';
import 'package:relief_tracker/domain/model/query_params.dart';
import 'package:relief_tracker/injection_container.dart';

class LocationApiImpl extends LocationApi {
  late Dio dio;
  String? token;

  static const String _districtsUrl = 'locations/public/v1/districts/';
  static const String _upazilasUrl = 'locations/public/v1/upazilas/';
  static const String _unionsUrl = 'locations/public/v1/unions/';
  static const String _divisionUrl = 'locations/public/v1/divisions/';
  static const String _divisionDetailsUrl =
      'locations/public/v1/divisions/pk/details';
  static const String _districtDetailsUrl =
      'locations/public/v1/districts/pk/details';
  static const String _upazilaDetailsUrl =
      'locations/public/v1/upazilas/pk/details';

  LocationApiImpl() {
    dio = Dio();
    final dataSource = AccountLocalDataSourceImpl(
      sharedPref: getIt(),
    );
    token = dataSource.getToken();
  }

  Map<String, dynamic> getMappedQueryParameters({
    required List<QueryParam> queryParameters,
  }) {
    final Map<String, dynamic> queryParams = {};
    for (var queryParam in queryParameters) {
      queryParams[queryParam.key] = queryParam.value;
    }
    return queryParams;
  }

  @override
  Future<PaginatedDataResponse<DistrictResponse>> getDistricts({
    required List<QueryParam> queryParams,
  }) async {
    try {
      final result = await dio.get(
        Config.baseUrl + _districtsUrl,
        queryParameters: getMappedQueryParameters(queryParameters: queryParams),
      );

      return PaginatedDataResponse.fromJson(
        result.data,
        (json) => DistrictResponse.fromJson(json),
      );
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<PaginatedDataResponse<UnionResponse>> getUnions({
    required List<QueryParam> queryParams,
  }) async {
    try {
      final result = await dio.get(
        Config.baseUrl + _unionsUrl,
        queryParameters: getMappedQueryParameters(queryParameters: queryParams),
      );

      return PaginatedDataResponse.fromJson(
        result.data,
        (json) => UnionResponse.fromJson(json),
      );
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<PaginatedDataResponse<UpazilaResponse>> getUpazilas({
    required List<QueryParam> queryParams,
  }) async {
    final result = await dio.get(
      Config.baseUrl + _upazilasUrl,
      queryParameters: getMappedQueryParameters(queryParameters: queryParams),
    );

    return PaginatedDataResponse.fromJson(
      result.data,
      (json) => UpazilaResponse.fromJson(json),
    );
  }

  @override
  Future<PaginatedDataResponse<DivisionResponse>> getDivisions({
    required List<QueryParam> queryParams,
  }) async {
    try {
      final result = await dio.get(
        Config.baseUrl + _divisionUrl,
        queryParameters: getMappedQueryParameters(queryParameters: queryParams),
      );

      return PaginatedDataResponse.fromJson(
        result.data,
        (json) => DivisionResponse.fromJson(json),
      );
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<DistrictDetailsResponse> getDistrictDetails({
    required int districtId,
  }) {
    try {
      final result = dio.get(
        Config.baseUrl +
            _districtDetailsUrl.replaceFirst('pk', districtId.toString()),
      );

      return result.then(
        (value) => DistrictDetailsResponse.fromJson(value.data),
      );
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<DivisionDetailsResponse> getDivisionDetails(
      {required int divisionId}) {
    try {
      final result = dio.get(
        Config.baseUrl +
            _divisionDetailsUrl.replaceFirst('pk', divisionId.toString()),
      );

      return result.then(
        (value) => DivisionDetailsResponse.fromJson(value.data),
      );
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<UpazilaDetailsResponse> getUpazilaDetails({required int upazilaId}) {
    try {
      final result = dio.get(
        Config.baseUrl +
            _upazilaDetailsUrl.replaceFirst('pk', upazilaId.toString()),
      );

      return result.then(
        (value) => UpazilaDetailsResponse.fromJson(value.data),
      );
    } on DioException catch (e) {
      rethrow;
    }
  }
}
