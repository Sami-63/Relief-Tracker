import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/domain/model/accounts/user.dart';

part 'user_ui_state.freezed.dart';

@freezed
class UserUiState with _$UserUiState {
  const factory UserUiState.loading() = LoadingState;

  const factory UserUiState.success({
    required List<User> users,
  }) = SuccessState;

  const factory UserUiState.error(String message) = ErrorState;
}
