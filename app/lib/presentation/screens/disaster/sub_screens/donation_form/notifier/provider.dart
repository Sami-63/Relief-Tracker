import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/donation_form/notifier/user_notifier.dart';

import '../state/create_donation_ui_state.dart';
import '../state/user_ui_state.dart';
import 'create_donation_notifier.dart';
import 'donation_notifier.dart';

final AutoDisposeChangeNotifierProvider<DonationNotifier>
    donationNotifierProvider = ChangeNotifierProvider.autoDispose(
  (ref) => DonationNotifier(),
);

typedef UserNotifierProvider
    = AutoDisposeStateNotifierProvider<UserNotifier, UserUiState>;

final UserNotifierProvider userNotifierProvider =
    AutoDisposeStateNotifierProvider((ref) => UserNotifier());

typedef CreateDonationNotifierProvider = AutoDisposeStateNotifierProvider<
    CreateDonationNotifier, CreateDonationUiState>;

final CreateDonationNotifierProvider createDonationNotifierProvider =
    AutoDisposeStateNotifierProvider((ref) => CreateDonationNotifier());
