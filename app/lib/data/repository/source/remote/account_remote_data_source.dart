import 'package:relief_tracker/data/datasource/remote/model/response/account/auth_response.dart';
import 'package:relief_tracker/domain/model/accounts/user.dart';

abstract class AccountRemoteDataSource {
  Future<AuthResponse> signIn({
    required String username,
    required String password,
  });

  Future<AuthResponse> signUp({
    required String username,
    required String password,
    required String email,
    required String firstName,
    required String lastName,
  });

  Future<User> getUserInfo();

  Future<List<User>> getUsers({
    required String query,
  });

  Future<void> updateRole({
    required int userId,
    required String role,
  });
}
