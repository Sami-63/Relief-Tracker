import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/domain/usecase/account/get_user_info_use_case.dart';
import 'package:relief_tracker/injection_container.dart';
import 'package:relief_tracker/presentation/state/auth_ui_state.dart';
import 'package:relief_tracker/presentation/state/user_info_ui_state.dart';

class UserInfoNotifier extends StateNotifier<UserInfoUiState> {
  final AuthUiState authState;

  UserInfoNotifier(this.authState) : super(const UserInfoUiState.anonymous()) {
    authState.maybeWhen(
      authenticated: () => fetchUserInfo(),
      orElse: () {
        state = const UserInfoUiState.anonymous();
      },
    );
  }

  void fetchUserInfo() async {
    if (authState is! AuthenticatedState) {
      return;
    }

    state = const UserInfoUiState.loading();

    final useCase = getIt<GetUserInfoUseCase>();
    final result = await useCase();

    state = result.when(
      success: (userInfo) => UserInfoUiState.success(userInfo),
      failure: (failure) => UserInfoUiState.error(failure.message),
    );
  }
}
