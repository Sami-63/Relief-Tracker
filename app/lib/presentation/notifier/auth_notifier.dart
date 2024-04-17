import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/domain/usecase/account/check_logged_in_use_case.dart';
import 'package:relief_tracker/domain/usecase/account/sign_in_use_case.dart';
import 'package:relief_tracker/domain/usecase/account/sign_out_use_case.dart';
import 'package:relief_tracker/domain/usecase/account/sign_up_use_case.dart';
import 'package:relief_tracker/injection_container.dart';
import 'package:relief_tracker/presentation/state/auth_ui_state.dart';

class AuthNotifier extends StateNotifier<AuthUiState> {
  AuthNotifier() : super(const AuthUiState.anonymous()) {
    _checkAuthStatus();
  }

  void _checkAuthStatus() async {
    final useCase = getIt.get<CheckLoggedInUseCase>();
    final isLoggedIn = useCase();
    state = isLoggedIn
        ? const AuthUiState.authenticated()
        : const AuthUiState.anonymous();
  }

  Future<void> signIn({
    required String username,
    required String password,
  }) async {
    state = const AuthUiState.loading();

    final usecase = getIt.get<SignInUseCase>();
    final result = await usecase(
      username: username,
      password: password,
    );
    state = result.when(
      success: (value) => const AuthUiState.authenticated(),
      failure: (error) => AuthUiState.error(error.message),
    );
  }

  Future<void> signUp({
    required String username,
    required String password,
    required String email,
    required String firstName,
    required String lastName,
  }) async {
    state = const AuthUiState.loading();

    final useCase = getIt.get<SignUpUseCase>();
    final result = await useCase(
      username: username,
      password: password,
      email: email,
      firstName: firstName,
      lastName: lastName,
    );

    state = result.when(
      success: (_) => const AuthUiState.authenticated(),
      failure: (failure) => AuthUiState.error(failure.message),
    );
  }

  void signOut() async {
    final useCase = getIt<SignOutUseCase>();
    final result = await useCase();

    state = result.when(
      success: (_) => const AuthUiState.anonymous(),
      failure: (failure) => AuthUiState.error(failure.message),
    );
  }
}
