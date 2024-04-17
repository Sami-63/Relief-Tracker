import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/presentation/route_manager/route_manager.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_detail/notifier/disaster_detail_notifier.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_detail/widget/disaster_success_view.dart';

class DisasterDetailScreenArgs {
  final int id;

  const DisasterDetailScreenArgs({required this.id});
}

class DisasterDetailScreen extends ConsumerStatefulWidget {
  final DisasterDetailScreenArgs args;

  const DisasterDetailScreen({
    super.key,
    required this.args,
  });

  @override
  ConsumerState<DisasterDetailScreen> createState() =>
      _DisasterDetailScreenState();
}

class _DisasterDetailScreenState extends ConsumerState<DisasterDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final uiState = ref.watch(disasterDetailNotifierProvider(widget.args.id));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Disaster Detail'),
      ),
      body: uiState.when(
          loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
          success: (data) => DisasterSuccessView(disaster: data),
          error: (error) => Center(
                child: Text(error),
              )),
      floatingActionButton: uiState.when(
        loading: () => null,
        success: (data) => ElevatedButton(
          onPressed: () {
            RouteManager.of(context)
                .goToDonationFormScreen(disasterId: data.id);
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 4, // Add elevation
            backgroundColor: Colors.green,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              'Add Donation Record',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        error: (error) => null,
      ),
    );
  }
}
