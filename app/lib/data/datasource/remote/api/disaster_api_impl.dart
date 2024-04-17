import 'package:dio/dio.dart';
import 'package:relief_tracker/data/datasource/local/source/account_local_data_source_impl.dart';
import 'package:relief_tracker/data/datasource/remote/api/disaster_api.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/disaster/affected_district_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/disaster/affected_union_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/disaster/affected_upazila_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/common/paginated_data_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/disaster/disaster_response.dart';
import 'package:relief_tracker/data/datasource/remote/utils/config.dart';
import 'package:relief_tracker/domain/model/query_params.dart';
import 'package:relief_tracker/injection_container.dart';

class DisasterApiImpl implements DisasterApi {
  static const String disasterCreateUrl = 'disasters/private/v1/disasters/';
  static const String disasterUrl = 'disasters/public/v1/disasters/';
  static const String disasterDetailUrl =
      'disasters/public/v1/disasters/pk/details';

  late Dio dio;
  String? token = '';

  DisasterApiImpl() {
    dio = Dio();
    final dataSource = AccountLocalDataSourceImpl(
      sharedPref: getIt(),
    );
    token = dataSource.getToken();

    if (token != null) {
      dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] = 'Token ${token!}';
          return handler.next(options);
        },
      ));
    }
  }

  @override
  Future<DisasterResponse> createDisaster({
    required String title,
    required String description,
    required String startTime,
    required String? endTime,
    required List<AffectedDistrictRequest> affectedDistricts,
    required List<AffectedUpazilaRequest> affectedUpazilas,
    required List<AffectedUnionRequest> affectedUnions,
    required List<String> images,
  }) {
    try {
      final result = dio.post(
        Config.baseUrl + disasterCreateUrl,
        data: {
          'title': title,
          'description': description,
          'start_time': startTime,
          'end_time': endTime,
          'affected_districts': affectedDistricts
              .map((affectedDistrict) => affectedDistrict.toJson())
              .toList(),
          'affected_upazilas': affectedUpazilas
              .map((affectedUpazila) => affectedUpazila.toJson())
              .toList(),
          'affected_unions': affectedUnions
              .map((affectedUnion) => affectedUnion.toJson())
              .toList(),
          'images': images,
        },
      );

      return result.then(
        (value) => DisasterResponse.fromJson(value.data),
      );
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<PaginatedDataResponse<DisasterResponse>> fetchDisasters({
    required List<QueryParam> queryParams,
  }) {
    try {
      final result = dio.get(
        Config.baseUrl + disasterUrl,
        queryParameters:
            _getMappedQueryParameters(queryParameters: queryParams),
      );

      return result.then(
        (value) => PaginatedDataResponse.fromJson(
          value.data,
          (json) => DisasterResponse.fromJson(json),
        ),
      );
    } on DioException catch (e) {
      rethrow;
    }
  }

  Map<String, dynamic> _getMappedQueryParameters({
    required List<QueryParam> queryParameters,
  }) {
    final Map<String, dynamic> queryParams = {};
    for (var queryParam in queryParameters) {
      queryParams[queryParam.key] = queryParam.value;
    }
    return queryParams;
  }

  @override
  Future<DisasterResponse> fetchDisaster({required int id}) {
    try {
      final result = dio.get(
        Config.baseUrl + disasterDetailUrl.replaceFirst('pk', id.toString()),
      );

      return result.then(
        (value) => DisasterResponse.fromJson(value.data),
      );
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<String>> uploadImages({
    required List<String> imagePaths,
  }) async {
    print('imagePaths: $imagePaths');

    try {
      final formData = FormData();
      for (var imagePath in imagePaths) {
        formData.files.add(MapEntry(
          'files',
          await MultipartFile.fromFile(
            imagePath,
            filename: imagePath.split('/').last,
          ),
        ));
      }

      final result = await dio.post(
        '${Config.baseUrl}media-center/upload/',
        data: formData,
      );

      print(result.data);

      List<String> imageUrls = [];
      for (var image in result.data) {
        imageUrls.add(image['file']);
      }

      return imageUrls;
    } on DioException catch (e) {
      rethrow;
    }
  }
}
