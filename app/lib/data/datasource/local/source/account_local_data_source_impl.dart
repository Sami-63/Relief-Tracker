import 'dart:convert';

import 'package:relief_tracker/data/datasource/local/utils/user_info_converter.dart';
import 'package:relief_tracker/data/repository/source/local/account_local_data_source.dart';
import 'package:relief_tracker/domain/model/accounts/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountLocalDataSourceImpl implements AccountLocalDataSource {
  final SharedPreferences _sharedPref;

  static const _token = 'token';
  static const _userInfo = 'user_info';

  AccountLocalDataSourceImpl({required SharedPreferences sharedPref})
      : _sharedPref = sharedPref;

  @override
  String? getToken() => _sharedPref.getString(_token);

  @override
  Future<void> removeToken() async {
    await _sharedPref.remove(_token);
  }

  @override
  Future<void> setToken({required String token}) async {
    await _sharedPref.setString(_token, token);
  }

  @override
  Future<void> saveUserInfo({required User user}) {
    final userData = jsonEncode(UserInfoConverter().toJson(user));
    return _sharedPref.setString(_userInfo, userData);
  }

  @override
  User? getUserInfo() {
    final userData = _sharedPref.getString(_userInfo);
    if (userData != null) {
      return UserInfoConverter().fromJson(jsonDecode(userData));
    } else {
      return null;
    }
  }

  @override
  Future<dynamic> removeUserInfo() async {
    await _sharedPref.remove(_userInfo);
  }

  @override
  Future<void> clearDataSource() async {
    await _sharedPref.remove(_userInfo);
    await _sharedPref.remove(_token);
    await _sharedPref.clear();
  }
}
