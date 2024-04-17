import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:relief_tracker/presentation/route_manager/route_manager.dart';
import 'package:relief_tracker/presentation/routes.dart';

class RouteManagerImpl implements RouteManager {
  final BuildContext context;

  RouteManagerImpl(this.context);

  @override
  bool canPop() => context.canPop();

  @override
  void pop<T extends Object?>([T? result]) => context.pop(result);

  @override
  void goNamed(
    String routeName, {
    Map<String, String> pathParameters = const {},
    Map<String, String> queryParameters = const {},
  }) {
    context.goNamed(
      routeName,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
    );
  }

  @override
  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Map<String, String> pathParameters = const {},
    Map<String, String> queryParameters = const {},
  }) {
    return context.pushNamed(
      routeName,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
    );
  }

  @override
  void goToHomeScreen() {
    context.goNamed(Routes.home);
  }

  @override
  void goToDisastersScreen() {
    context.goNamed(Routes.disasters);
  }

  @override
  void goToDonationsScreen() {
    context.goNamed(Routes.donations);
  }

  @override
  void goToSettingsScreen() {
    context.goNamed(Routes.setting);
  }

  @override
  void goToLoginScreen() {
    context.pushNamed(Routes.login);
  }

  @override
  void goToRegisterScreen() {
    context.pushNamed(Routes.register);
  }

  @override
  void goToDisasterFormScreen() {
    context.pushNamed(Routes.disasterForm);
  }

  @override
  void goToDisasterDetailsScreen({required int id}) {
    context.pushNamed(
      Routes.disasterDetails,
      pathParameters: {'disasterId': id.toString()},
    );
  }

  @override
  void goToDonationFormScreen({required int disasterId}) {
    context.pushNamed(
      Routes.donationForm,
      pathParameters: {'disasterId': disasterId.toString()},
    );
  }

  @override
  void goToSignUpScreen() {
    context.pushNamed(Routes.register);
  }

  @override
  void goToMyDonationsScreen() {
    context.pushNamed(Routes.myDonations);
  }

  @override
  void goToDonationDetailsScreen({required int id}) {
    context.pushNamed(
      Routes.donationDetails,
      pathParameters: {'donationId': id.toString()},
    );
  }

  @override
  void goToAssignModeratorScreen() {
    context.pushNamed(Routes.assignModerator);
  }
}
