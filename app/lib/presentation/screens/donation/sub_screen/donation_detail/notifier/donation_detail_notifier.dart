import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/domain/usecase/donation/get_donation_use_case.dart';
import 'package:relief_tracker/injection_container.dart';

import '../state/donation_detail_ui_state.dart';

class DonationDetailNotifier extends StateNotifier<DonationDetailUiState> {
  DonationDetailNotifier({
    required this.id,
  }) : super(const DonationDetailUiState.loading()) {
    fetchDonation();
  }

  final int id;

  Future<void> fetchDonation() async {
    state = const DonationDetailUiState.loading();

    final usecase = getIt.get<GetDonationUseCase>();
    final result = await usecase(id: id);

    state = result.when(
      success: (data) => DonationDetailUiState.success(donation: data),
      failure: (error) => DonationDetailUiState.error(error.toString()),
    );
  }
}
