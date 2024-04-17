import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/presentation/screens/donation/notifier/donation_list_notifier.dart';
import 'package:relief_tracker/presentation/screens/donation/state/donation_list_ui_state.dart';

typedef DonationListNotifierProvider = AutoDisposeStateNotifierProviderFamily<
    DonationListNotifier, DonationListUiState, DonationNotifierArgs>;

final DonationListNotifierProvider donationListNotifierProvider =
    AutoDisposeStateNotifierProviderFamily(
  (ref, args) => DonationListNotifier(args),
);
