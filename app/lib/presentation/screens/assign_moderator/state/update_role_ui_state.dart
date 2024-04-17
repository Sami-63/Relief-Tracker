import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_role_ui_state.freezed.dart';

@freezed
class UpdateRoleUiState with _$UpdateRoleUiState {
  const factory UpdateRoleUiState.initial() = InitialState;

  const factory UpdateRoleUiState.loading() = LoadingState;

  const factory UpdateRoleUiState.success() = SuccessState;

  const factory UpdateRoleUiState.error(String message) = ErrorState;
}
