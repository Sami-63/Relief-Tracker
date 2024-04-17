import 'package:relief_tracker/data/mapper/account/user_mapper.dart';
import 'package:relief_tracker/data/repository/source/local/account_local_data_source.dart';
import 'package:relief_tracker/data/repository/source/remote/account_remote_data_source.dart';
import 'package:relief_tracker/domain/model/accounts/user.dart';
import 'package:relief_tracker/domain/repository/account_repository.dart';

class AccountRepositoryImpl implements AccountRepository {
  final AccountRemoteDataSource _accountRemoteDataSource;
  final AccountLocalDataSource _accountLocalDataSource;

  AccountRepositoryImpl({
    required AccountRemoteDataSource accountRemoteDataSource,
    required AccountLocalDataSource accountLocalDataSource,
  })  : _accountRemoteDataSource = accountRemoteDataSource,
        _accountLocalDataSource = accountLocalDataSource;

  @override
  Future<void> signIn({
    required String username,
    required String password,
  }) async {
    final response = await _accountRemoteDataSource.signIn(
      username: username,
      password: password,
    );

    await _accountLocalDataSource.saveUserInfo(user: response.user.toUser());
    await _accountLocalDataSource.setToken(token: response.token);
  }

  @override
  Future<void> signUp({
    required String username,
    required String password,
    required String email,
    required String firstName,
    required String lastName,
  }) async {
    final response = await _accountRemoteDataSource.signUp(
      username: username,
      password: password,
      email: email,
      firstName: firstName,
      lastName: lastName,
    );

    await _accountLocalDataSource.saveUserInfo(user: response.user.toUser());
    await _accountLocalDataSource.setToken(token: response.token);
  }

  Future<User> _getUserInfo() {
    return _accountRemoteDataSource.getUserInfo();
  }

  void syncUserInfo(User? user) async {
    user ??= await _getUserInfo();
    await _accountLocalDataSource.saveUserInfo(user: user);
  }

  @override
  Future<User> getUserInfo() async {
    final localUser = _accountLocalDataSource.getUserInfo();
    if (localUser != null) {
      syncUserInfo(null);
      return Future.value(localUser);
    } else {
      final user = await _accountRemoteDataSource.getUserInfo();
      syncUserInfo(user);
      return user;
    }
  }

  @override
  String? getToken() {
    return _accountLocalDataSource.getToken();
  }

  @override
  Future<void> signOut() {
    return _accountLocalDataSource.clearDataSource();
  }

  @override
  Future<List<User>> getUsers({required String query}) {
    return _accountRemoteDataSource.getUsers(query: query);
  }

  @override
  Future<void> updateRole({required int userId, required String role}) {
    return _accountRemoteDataSource.updateRole(userId: userId, role: role);
  }
}
