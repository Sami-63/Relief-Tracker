import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/presentation/route_manager/route_manager.dart';
import 'package:relief_tracker/presentation/screens/donation/notifier/donation_list_notifier.dart';
import 'package:relief_tracker/presentation/screens/donation/notifier/provider.dart';
import 'package:relief_tracker/presentation/screens/donation/widget/donation_success_view.dart';
import 'package:relief_tracker/presentation/widget/common_navigation_bar.dart';

class DonationScreen extends ConsumerStatefulWidget {
  const DonationScreen({super.key});

  @override
  ConsumerState<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends ConsumerState<DonationScreen> {
  late DonationNotifierArgs args;

  @override
  void initState() {
    super.initState();
    args = DonationNotifierArgs(myDonation: false);
  }

  @override
  Widget build(BuildContext context) {
    final uiState = ref.watch(donationListNotifierProvider(args));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donation'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                RouteManager.of(context).goToMyDonationsScreen();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 1),
                      blurRadius: 4,
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                  children: [
                    Text('My Donations',
                        style: Theme.of(context).textTheme.titleMedium),
                    const Spacer(),
                    IconButton(
                        icon: const Icon(Icons.arrow_forward_ios),
                        onPressed: () {}),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Divider(
                color: Colors.grey,
                height: 1,
              ),
            ),
            uiState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              success: (donations) => DonationSuccessView(donations: donations),
              error: (message) => Center(child: Text(message)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CommonNavigationBar(tab: 'Donations'),
    );
  }
}
