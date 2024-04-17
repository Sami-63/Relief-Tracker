import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/donation_detail_ui_state.dart';
import 'donation_detail_notifier.dart';

typedef DonationDetailNotifierProvider = AutoDisposeStateNotifierProviderFamily<
    DonationDetailNotifier, DonationDetailUiState, int>;

final DonationDetailNotifierProvider donationDetailNotifierProvider =
    StateNotifierProvider.autoDispose.family(
  (ref, id) => DonationDetailNotifier(id: id),
);
