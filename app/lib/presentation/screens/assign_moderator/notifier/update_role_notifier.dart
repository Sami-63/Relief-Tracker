import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/domain/usecase/account/update_role_use_case.dart';
import 'package:relief_tracker/injection_container.dart';

import '../state/update_role_ui_state.dart';

final updateRoleNotifierProvider =
    AutoDisposeStateNotifierProvider<UpdateRoleNotifier, UpdateRoleUiState>(
  (ref) => UpdateRoleNotifier(),
);

class UpdateRoleNotifier extends StateNotifier<UpdateRoleUiState> {
  UpdateRoleNotifier() : super(const UpdateRoleUiState.initial());

  Future<void> updateRole({
    required int uid,
    required String role,
    required Function onSuccess,
  }) async {
    state = const UpdateRoleUiState.loading();

    final useCase = getIt<UpdateRoleUseCase>();
    final result = await useCase(uid: uid, role: role);

    state = result.when(
      success: (_) {
        onSuccess();
        return const UpdateRoleUiState.success();
      },
      failure: (failure) => UpdateRoleUiState.error(failure.message),
    );
  }
}
