import 'package:flutter/material.dart';
import 'package:relief_tracker/presentation/route_manager/route_manager_impl.dart';

abstract class RouteManager {
  factory RouteManager.of(BuildContext context) {
    return RouteManagerImpl(context);
  }

  bool canPop();

  void pop<T extends Object?>([T? result]);

  void goNamed(
    String routeName, {
    Map<String, String> pathParameters = const {},
    Map<String, String> queryParameters = const {},
  });

  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Map<String, String> pathParameters = const {},
    Map<String, String> queryParameters = const {},
  });

  void goToHomeScreen();

  void goToDisastersScreen();

  void goToDonationsScreen();

  void goToSettingsScreen();

  void goToLoginScreen();

  void goToSignUpScreen();

  void goToRegisterScreen();

  void goToDisasterFormScreen();

  void goToDisasterDetailsScreen({required int id});

  void goToDonationFormScreen({required int disasterId});

  void goToMyDonationsScreen();

  void goToDonationDetailsScreen({required int id});

  void goToAssignModeratorScreen();
}
