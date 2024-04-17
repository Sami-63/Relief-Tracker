import 'package:relief_tracker/domain/model/accounts/user.dart';

abstract class AccountRepository {
  Future<void> signIn({
    required String username,
    required String password,
  });

  Future<void> signUp({
    required String username,
    required String password,
    required String email,
    required String firstName,
    required String lastName,
  });

  Future<User> getUserInfo();

  String? getToken();

  Future<void> signOut();

  Future<List<User>> getUsers({
    required String query,
  });

  Future<void> updateRole({
    required int userId,
    required String role,
  });
}
