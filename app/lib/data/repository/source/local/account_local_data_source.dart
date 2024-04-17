import 'package:relief_tracker/domain/model/accounts/user.dart';

abstract class AccountLocalDataSource {
  String? getToken();

  Future<void> setToken({required String token});

  Future<void> removeToken();

  Future<void> saveUserInfo({required User user});

  User? getUserInfo();

  Future<void> removeUserInfo();

  Future<void> clearDataSource();
}
