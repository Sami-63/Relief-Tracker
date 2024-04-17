import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/presentation/notifier/provider.dart';
import 'package:relief_tracker/presentation/route_manager/route_manager.dart';
import 'package:relief_tracker/presentation/screens/disaster/notifier/provider.dart';
import 'package:relief_tracker/presentation/screens/disaster/widget/disaster_success_view.dart';
import 'package:relief_tracker/presentation/widget/common_navigation_bar.dart';

class DisasterScreen extends ConsumerStatefulWidget {
  const DisasterScreen({super.key});

  @override
  ConsumerState<DisasterScreen> createState() => _DisasterScreenState();
}

class _DisasterScreenState extends ConsumerState<DisasterScreen> {
  @override
  Widget build(BuildContext context) {
    final uiState = ref.watch(disasterListNotifierProvider);
    final userInfo = ref.watch(userInfoNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Disasters'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              uiState.when(
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                success: (disasters) =>
                    DisasterSuccessView(disasters: disasters),
                error: (message) => Center(
                  child: Text(message),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: userInfo.when(
        anonymous: () => const SizedBox.shrink(),
        loading: () => const SizedBox.shrink(),
        success: (userInfo) {
          if (userInfo.type == 'admin') {
            return FloatingActionButton(
              onPressed: () =>
                  RouteManager.of(context).goToDisasterFormScreen(),
              child: const Icon(Icons.add),
            );
          }
          return const SizedBox.shrink();
        },
        error: (message) => const SizedBox.shrink(),
      ),
      bottomNavigationBar: const CommonNavigationBar(tab: 'Disasters'),
    );
  }
}
