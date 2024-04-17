import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_donation_state_ui_state.freezed.dart';

@freezed
class UpdateDonationStateUiState with _$UpdateDonationStateUiState {
  const factory UpdateDonationStateUiState.initial() = InitialState;

  const factory UpdateDonationStateUiState.loading() = LoadingState;

  const factory UpdateDonationStateUiState.success() = SuccessState;

  const factory UpdateDonationStateUiState.error(String message) = ErrorState;
}
