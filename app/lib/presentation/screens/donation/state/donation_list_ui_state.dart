import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/domain/model/donation/donation.dart';

part 'donation_list_ui_state.freezed.dart';

@freezed
class DonationListUiState with _$DonationListUiState {
  const factory DonationListUiState.loading() = LoadingState;

  const factory DonationListUiState.success({
    required List<Donation> donations,
  }) = SuccessState;

  const factory DonationListUiState.error(String message) = ErrorState;
}
