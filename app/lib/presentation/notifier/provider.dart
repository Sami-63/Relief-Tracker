import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/presentation/notifier/auth_notifier.dart';
import 'package:relief_tracker/presentation/notifier/user_info_notifier.dart';
import 'package:relief_tracker/presentation/state/auth_ui_state.dart';
import 'package:relief_tracker/presentation/state/user_info_ui_state.dart';

typedef AuthNotifierProvider = StateNotifierProvider<AuthNotifier, AuthUiState>;

final AuthNotifierProvider authNotifierProvider =
    StateNotifierProvider(_getAuthNotifier);

typedef UserInfoNotifierProvider
    = StateNotifierProvider<UserInfoNotifier, UserInfoUiState>;

final UserInfoNotifierProvider userInfoNotifierProvider =
    StateNotifierProvider(_getUserInfoNotifier);

AuthNotifier _getAuthNotifier(StateNotifierProviderRef ref) => AuthNotifier();

UserInfoNotifier _getUserInfoNotifier(StateNotifierProviderRef ref) {
  // Listening to auth state changes to update user info
  // when user signs in or out.
  final autState = ref.watch(authNotifierProvider);
  return UserInfoNotifier(autState);
}
