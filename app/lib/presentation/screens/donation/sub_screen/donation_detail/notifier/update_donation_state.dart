import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/domain/usecase/donation/update_donation_state_use_case.dart';
import 'package:relief_tracker/injection_container.dart';
import 'package:relief_tracker/presentation/screens/donation/sub_screen/donation_detail/state/update_donation_state_ui_state.dart';

final updateDonationStateNotifierProvider = AutoDisposeStateNotifierProvider<
    UpdateDonationStateNotifier, UpdateDonationStateUiState>(
  (ref) => UpdateDonationStateNotifier(),
);

class UpdateDonationStateNotifier
    extends StateNotifier<UpdateDonationStateUiState> {
  UpdateDonationStateNotifier()
      : super(const UpdateDonationStateUiState.initial());

  void updateDonation({
    required int donationId,
    required String donationState,
    required Function onUpdated,
  }) async {
    state = const UpdateDonationStateUiState.loading();

    final usecase = getIt.get<UpdateDonationStateUseCase>();
    final result = await usecase(
      id: donationId,
      state: donationState,
    );

    state = result.when(
      success: (_) {
        onUpdated();
        return const UpdateDonationStateUiState.success();
      },
      failure: (message) =>
          UpdateDonationStateUiState.error(message.toString()),
    );
  }
}
