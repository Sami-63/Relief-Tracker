import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/presentation/screens/donation/sub_screen/donation_detail/notifier/provider.dart';
import 'package:relief_tracker/presentation/screens/donation/sub_screen/donation_detail/widget/donation_detail_success_view.dart';

class DonationDetailScreen extends ConsumerStatefulWidget {
  final int id;

  const DonationDetailScreen({super.key, required this.id});

  @override
  ConsumerState<DonationDetailScreen> createState() =>
      _DonationDetailScreenState();
}

class _DonationDetailScreenState extends ConsumerState<DonationDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final uiState = ref.watch(donationDetailNotifierProvider(widget.id));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Donation Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: uiState.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (data) => DonationViewSuccessView(data: data),
          error: (error) => Center(
            child: Text(error),
          ),
        ),
      ),
    );
  }
}
