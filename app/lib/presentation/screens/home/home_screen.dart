import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:relief_tracker/presentation/notifier/provider.dart';
import 'package:relief_tracker/presentation/screens/disaster/notifier/provider.dart';
import 'package:relief_tracker/presentation/screens/donation/notifier/donation_list_notifier.dart';
import 'package:relief_tracker/presentation/screens/donation/notifier/provider.dart';
import 'package:relief_tracker/presentation/screens/home/widget/disaster_success_view.dart';
import 'package:relief_tracker/presentation/screens/home/widget/donation_success_view.dart';
import 'package:relief_tracker/presentation/screens/home/widget/location_success_view.dart';
import 'package:relief_tracker/presentation/widget/common_navigation_bar.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late GoogleMapController mapController;
  late DonationNotifierArgs donationArgs;

  @override
  void initState() {
    super.initState();

    donationArgs = DonationNotifierArgs(myDonation: false);
  }

  @override
  Widget build(BuildContext context) {
    final userInfoUiState = ref.watch(userInfoNotifierProvider);
    final authUiState = ref.read(authNotifierProvider.notifier);
    final disasterUiState = ref.watch(disasterListNotifierProvider);
    final donationUiState =
        ref.watch(donationListNotifierProvider(donationArgs));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Relief Tracker',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 4,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(disasterListNotifierProvider);
          ref.invalidate(donationListNotifierProvider(donationArgs));
        },
        color: Colors.blue,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: userInfoUiState.maybeWhen(
                    success: (user) => Text('Welcome ${user.username}'),
                    orElse: () => const Text('Welcome Anonymous'),
                  ),
                ),
                donationUiState.when(
                  loading: () => Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                  success: (donations) => LocationSuccessView(
                    donations: donations,
                  ),
                  error: (message) => Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    'Recent Disaster Reports',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: disasterUiState.when(
                    loading: () => const CircularProgressIndicator(),
                    success: (disasters) => DisasterSuccessView(
                      disasters: disasters,
                      width: MediaQuery.of(context).size.width,
                    ),
                    error: (message) => Text(message),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    'Recent Donations',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: donationUiState.when(
                    loading: () => const CircularProgressIndicator(),
                    success: (donations) => DonationSuccessView(
                      donations: donations,
                    ),
                    error: (message) => Text(message),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CommonNavigationBar(tab: 'Home'),
    );
  }
}
