import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/domain/model/accounts/user.dart';
import 'package:relief_tracker/domain/usecase/account/get_users_use_case.dart';
import 'package:relief_tracker/injection_container.dart';

import '../state/user_ui_state.dart';

class UserNotifier extends StateNotifier<UserUiState> {
  UserNotifier() : super(const UserUiState.loading()) {
    fetchUsers();
  }

  final List<User> _users = [];
  String _search = '';

  List<User> get users => _users;

  Future<void> updateSearch(String value) async {
    _search = value;
    await fetchUsers();
  }

  Future<void> fetchUsers() async {
    state = const UserUiState.loading();

    final usecase = getIt.get<GetUsersUseCase>();
    final result = await usecase(query: _search);

    state = result.when(
      success: (users) {
        _users.clear();
        _users.addAll(users);
        return UserUiState.success(users: _users);
      },
      failure: (message) => UserUiState.error(message.toString()),
    );
  }
}
