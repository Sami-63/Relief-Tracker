import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/domain/model/donation/donation.dart';

part 'donation_detail_ui_state.freezed.dart';

@freezed
class DonationDetailUiState with _$DonationDetailUiState {
  const factory DonationDetailUiState.loading() = LoadingState;

  const factory DonationDetailUiState.success({
    required Donation donation,
  }) = SuccessState;

  const factory DonationDetailUiState.error(String message) = ErrorState;
}
