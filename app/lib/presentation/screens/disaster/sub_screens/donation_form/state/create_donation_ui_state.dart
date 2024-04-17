import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_donation_ui_state.freezed.dart';

@freezed
class CreateDonationUiState with _$CreateDonationUiState {
  const factory CreateDonationUiState.initial() = InitialState;

  const factory CreateDonationUiState.loading() = LoadingState;

  const factory CreateDonationUiState.success() = SuccessState;

  const factory CreateDonationUiState.error(String message) = ErrorState;
}
