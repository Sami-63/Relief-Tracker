import 'package:dio/dio.dart';
import 'package:relief_tracker/data/datasource/local/source/account_local_data_source_impl.dart';
import 'package:relief_tracker/data/datasource/remote/api/donation_api.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/donation/donation_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/common/paginated_data_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/donation/donation_response.dart';
import 'package:relief_tracker/data/datasource/remote/utils/config.dart';
import 'package:relief_tracker/domain/model/query_params.dart';
import 'package:relief_tracker/injection_container.dart';

class DonationApiImpl implements DonationApi {
  late Dio dio;
  String? token = '';

  static const String _donationCreateUrl =
      'donations/public/v1/donation/create/';
  static const String _donations = 'donations/public/v1/donations/';
  static const String _myDonations =
      'donations/public/v1/donations/my-donations/';
  static const String _donationById =
      'donations/public/v1/donations/pk/details';
  static const String _donationUpdateState =
      'donations/private/donations/pk/update/state/';

  DonationApiImpl() {
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
  Future<DonationResponse> createDonationReport({
    required DonationRequest donationCreateRequest,
  }) {
    try {
      final result = dio.post(
        Config.baseUrl + _donationCreateUrl,
        data: donationCreateRequest.toJson(),
      );

      return result.then(
        (value) => DonationResponse.fromJson(value.data),
      );
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<PaginatedDataResponse<DonationResponse>> getDonationReports({
    required bool myDonations,
    required List<QueryParam> queryParams,
  }) async {
    try {
      if (myDonations) {
        final result = await dio.get(Config.baseUrl + _myDonations);

        return PaginatedDataResponse.fromJson(
          result.data,
          (json) => DonationResponse.fromJson(json),
        );
      } else {
        final result = await dio.get(Config.baseUrl + _donations);

        return PaginatedDataResponse.fromJson(
          result.data,
          (json) => DonationResponse.fromJson(json),
        );
      }
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<DonationResponse> getDonationReportById({required int id}) {
    try {
      final result = dio.get(
        Config.baseUrl + _donationById.replaceFirst('pk', id.toString()),
      );

      return result.then(
        (value) => DonationResponse.fromJson(value.data),
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
  Future<DonationResponse> updateDonationReportState({
    required int id,
    required String state,
  }) {
    try {
      final result = dio.post(
        Config.baseUrl +
            _donationUpdateState
                .replaceFirst('pk', id.toString())
                .replaceFirst('state', state),
        data: {'state': state},
      );

      return result.then(
        (value) => DonationResponse.fromJson(value.data),
      );
    } on DioException catch (e) {
      rethrow;
    }
  }
}
