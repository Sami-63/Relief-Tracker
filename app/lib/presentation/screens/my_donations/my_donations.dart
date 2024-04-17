import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/presentation/screens/donation/notifier/donation_list_notifier.dart';
import 'package:relief_tracker/presentation/screens/donation/notifier/provider.dart';
import 'package:relief_tracker/presentation/screens/donation/widget/donation_success_view.dart';

class MyDonations extends ConsumerStatefulWidget {
  const MyDonations({super.key});

  @override
  ConsumerState<MyDonations> createState() => _MyDonationsState();
}

class _MyDonationsState extends ConsumerState<MyDonations> {
  late DonationNotifierArgs args;

  @override
  void initState() {
    super.initState();

    args = DonationNotifierArgs(myDonation: true);
  }

  @override
  Widget build(BuildContext context) {
    final uiState = ref.watch(donationListNotifierProvider(args));

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Donations'),
      ),
      body: SingleChildScrollView(
        child: uiState.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (donations) => DonationSuccessView(donations: donations),
          error: (message) => Center(child: Text(message)),
        ),
      ),
    );
  }
}
