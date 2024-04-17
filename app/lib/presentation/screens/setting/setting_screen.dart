import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/presentation/notifier/provider.dart';
import 'package:relief_tracker/presentation/route_manager/route_manager.dart';
import 'package:relief_tracker/presentation/widget/common_navigation_bar.dart';

class SettingScreen extends ConsumerStatefulWidget {
  const SettingScreen({super.key});

  @override
  ConsumerState<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends ConsumerState<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final userInfo = ref.watch(userInfoNotifierProvider);
    final authNotifier = ref.watch(authNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Login, logout
            userInfo.maybeWhen(
              anonymous: () => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.person,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Guest',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        RouteManager.of(context).goToLoginScreen();
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.login),
                            onPressed: () {
                              RouteManager.of(context).goToLoginScreen();
                            },
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        RouteManager.of(context).goToRegisterScreen();
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.person_add),
                            onPressed: () {
                              RouteManager.of(context).goToRegisterScreen();
                            },
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              success: (user) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.person,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '${user.firstName} ${user.lastName}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        ref.read(authNotifierProvider.notifier).signOut();
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.logout),
                            onPressed: () {
                              ref.read(authNotifierProvider.notifier).signOut();
                            },
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Logout',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (user.type == 'admin') ...[
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          RouteManager.of(context).goToAssignModeratorScreen();
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.verified_user),
                              onPressed: () {
                                RouteManager.of(context)
                                    .goToAssignModeratorScreen();
                              },
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Assign moderator',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ],
                ),
              ),
              orElse: () => const SizedBox(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CommonNavigationBar(tab: 'Settings'),
    );
  }
}
