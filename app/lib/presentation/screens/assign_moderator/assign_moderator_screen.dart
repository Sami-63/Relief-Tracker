import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/presentation/screens/assign_moderator/notifier/update_role_notifier.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_form/widget/custom_button.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/donation_form/notifier/provider.dart';

class AssignModerator extends ConsumerStatefulWidget {
  const AssignModerator({super.key});

  @override
  ConsumerState createState() => _AssignModeratorState();
}

class _AssignModeratorState extends ConsumerState<AssignModerator> {
  @override
  Widget build(BuildContext context) {
    final usersUiState = ref.watch(userNotifierProvider);
    final userRoleUpdateNotifier = ref.watch(updateRoleNotifierProvider);
    final notifier = ref.read(updateRoleNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Assign Moderator'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              userRoleUpdateNotifier.when(
                loading: () => const Text('Updating role...'),
                success: () {
                  return const Text('Role updated successfully');
                },
                error: (message) => Text(message),
                initial: () => const SizedBox.shrink(),
              ),
              usersUiState.when(
                loading: () => const CircularProgressIndicator(),
                success: (users) => ListView.separated(
                  shrinkWrap: true,
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${user.firstName} ${user.lastName}',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text(user.username),
                          ],
                        ),
                        CustomButton(
                          text: user.type == 'moderator'
                              ? 'Remove Moderator'
                              : 'Assign Moderator',
                          onPressed: () {
                            notifier.updateRole(
                              uid: user.id,
                              role: user.type == 'moderator'
                                  ? 'user'
                                  : 'moderator',
                              onSuccess: () {
                                ref.invalidate(userNotifierProvider);
                              },
                            );
                          },
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider();
                  },
                ),
                error: (message) => Text(message),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
