import 'package:relief_tracker/data/datasource/remote/model/request/account/sign_in_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/account/sign_up_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/account/auth_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/account/user_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/common/paginated_data_response.dart';

abstract class AccountApi {
  Future<AuthResponse> signIn({
    required SignInRequest request,
  });

  Future<AuthResponse> signUp({
    required SignUpRequest request,
  });

  Future<UserResponse> getUserInfo();

  Future<PaginatedDataResponse<UserResponse>> getUsers({
    required String query,
  });

  Future<void> updateRole({
    required int userId,
    required String role,
  });
}
