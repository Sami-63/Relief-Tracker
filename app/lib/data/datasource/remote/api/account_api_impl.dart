import 'package:dio/dio.dart';
import 'package:relief_tracker/data/datasource/local/source/account_local_data_source_impl.dart';
import 'package:relief_tracker/data/datasource/remote/api/account_api.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/account/sign_in_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/account/sign_up_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/account/auth_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/account/user_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/common/paginated_data_response.dart';
import 'package:relief_tracker/data/datasource/remote/utils/config.dart';
import 'package:relief_tracker/injection_container.dart';

class AccountApiImpl implements AccountApi {
  static const String _signInUrl = 'accounts/public/v1/login/';
  static const String _signUpUrl = 'accounts/public/v1/signup/';
  static const String _userInfoUrl = 'accounts/public/v1/user-info/';
  static const String _usersUrl = 'accounts/public/v1/users/';
  static const String _updateRoleUrl =
      'accounts/private/users/uid/assign-role/<role>/';

  late Dio dio;
  String? token;

  AccountApiImpl() {
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
  Future<AuthResponse> signIn({
    required SignInRequest request,
  }) {
    try {
      final result = dio.post(
        Config.baseUrl + _signInUrl,
        data: request.toJson(),
      );

      return result.then(
        (value) => AuthResponse.fromJson(value.data),
      );
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<AuthResponse> signUp({required SignUpRequest request}) {
    try {
      final result = dio.post(
        Config.baseUrl + _signUpUrl,
        data: request.toJson(),
      );

      return result.then(
        (value) => AuthResponse.fromJson(value.data),
      );
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserResponse> getUserInfo() {
    try {
      final result = dio.get(
        Config.baseUrl + _userInfoUrl,
      );

      return result.then(
        (value) => UserResponse.fromJson(value.data),
      );
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<PaginatedDataResponse<UserResponse>> getUsers({
    required String query,
  }) {
    try {
      final result = dio.get(
        Config.baseUrl + _usersUrl,
        queryParameters: {'name': query},
      );

      return result.then(
        (value) => PaginatedDataResponse.fromJson(
          value.data,
          (json) => UserResponse.fromJson(json),
        ),
      );
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updateRole({required int userId, required String role}) {
    try {
      final result = dio.post(
        Config.baseUrl +
            _updateRoleUrl
                .replaceFirst('uid', userId.toString())
                .replaceFirst('<role>', role),
      );

      return result.then(
        (value) => '',
      );
    } on DioException catch (e) {
      rethrow;
    }
  }
}
