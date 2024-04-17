import 'package:relief_tracker/data/datasource/remote/api/account_api.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/account/sign_in_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/account/sign_up_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/account/auth_response.dart';
import 'package:relief_tracker/data/mapper/account/user_mapper.dart';
import 'package:relief_tracker/data/repository/source/remote/account_remote_data_source.dart';
import 'package:relief_tracker/domain/model/accounts/user.dart';

class AccountRemoteDataSourceImpl implements AccountRemoteDataSource {
  final AccountApi _accountApi;

  AccountRemoteDataSourceImpl({required AccountApi accountApi})
      : _accountApi = accountApi;

  @override
  Future<AuthResponse> signIn({
    required String username,
    required String password,
  }) {
    final request = SignInRequest(username: username, password: password);
    return _accountApi.signIn(request: request);
  }

  @override
  Future<User> getUserInfo() async {
    final response = await _accountApi.getUserInfo();
    return response.toUser();
  }

  @override
  Future<List<User>> getUsers({required String query}) {
    final response = _accountApi.getUsers(query: query);

    return response
        .then((value) => value.results.map((e) => e.toUser()).toList());
  }

  @override
  Future<AuthResponse> signUp({
    required String username,
    required String password,
    required String email,
    required String firstName,
    required String lastName,
  }) {
    final request = SignUpRequest(
      username: username,
      password: password,
      email: email,
      firstName: firstName,
      lastName: lastName,
    );

    return _accountApi.signUp(request: request);
  }

  @override
  Future<void> updateRole({required int userId, required String role}) {
    return _accountApi.updateRole(userId: userId, role: role);
  }
}
