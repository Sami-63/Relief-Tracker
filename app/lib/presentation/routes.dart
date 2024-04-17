import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:relief_tracker/presentation/screens/assign_moderator/assign_moderator_screen.dart';
import 'package:relief_tracker/presentation/screens/disaster/disaster_screen.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_detail/disaster_detail_screen.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_form/disaster_form_screen.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/donation_form/donation_form_screen.dart';
import 'package:relief_tracker/presentation/screens/donation/donation_screen.dart';
import 'package:relief_tracker/presentation/screens/donation/sub_screen/donation_detail/donation_detail_screen.dart';
import 'package:relief_tracker/presentation/screens/home/home_screen.dart';
import 'package:relief_tracker/presentation/screens/login/login_screen.dart';
import 'package:relief_tracker/presentation/screens/my_donations/my_donations.dart';
import 'package:relief_tracker/presentation/screens/register/register_screen.dart';
import 'package:relief_tracker/presentation/screens/setting/setting_screen.dart';

class Routes {
  static const String home = 'home';
  static const String setting = 'setting';

  static const String disasters = 'disasters';
  static const String disasterDetails = 'disaster-details';
  static const String disasterForm = 'disaster-form';

  static const String donations = 'donations';
  static const String donationForm = 'donation-form';
  static const String myDonations = 'my-donations';
  static const String donationDetails = 'donation-details';

  static const String login = 'login';
  static const String register = 'register';
  static const String assignModerator = 'assign-moderator';
}

class AppRouter {
  static final router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        name: Routes.home,
        path: '/home',
        pageBuilder: (context, state) => const NoTransitionPage(
          name: Routes.home,
          child: HomeScreen(),
        ),
      ),
      GoRoute(
        name: Routes.login,
        path: '/login',
        pageBuilder: (context, state) => const NoTransitionPage(
          name: Routes.login,
          child: LoginScreen(),
        ),
      ),
      GoRoute(
        name: Routes.register,
        path: '/register',
        pageBuilder: (context, state) => const NoTransitionPage(
          name: Routes.register,
          child: RegisterScreen(),
        ),
      ),
      GoRoute(
        name: Routes.disasterForm,
        path: '/disasters-create',
        pageBuilder: (context, state) => const NoTransitionPage(
          name: Routes.disasterForm,
          child: DisasterFormScreen(),
        ),
      ),
      GoRoute(
        name: Routes.disasters,
        path: '/disasters',
        pageBuilder: (context, state) => const NoTransitionPage(
          name: Routes.disasters,
          child: DisasterScreen(),
        ),
        routes: [
          GoRoute(
            name: Routes.disasterDetails,
            path: ':disasterId/details',
            pageBuilder: (context, state) {
              final String disasterId = state.pathParameters['disasterId']!;
              return NoTransitionPage(
                child: DisasterDetailScreen(
                  args: DisasterDetailScreenArgs(id: int.parse(disasterId)),
                ),
              );
            },
          ),
          GoRoute(
            name: Routes.donationForm,
            path: ':disasterId/donation/create',
            pageBuilder: (context, state) {
              final String disasterId = state.pathParameters['disasterId']!;
              return NoTransitionPage(
                name: Routes.donationForm,
                child: DonationFormScreen(
                  args: DonationFormScreenArgs(
                    disasterId: int.parse(disasterId),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      GoRoute(
        name: Routes.donations,
        path: '/donations',
        pageBuilder: (context, state) => const NoTransitionPage(
          name: Routes.donations,
          child: DonationScreen(),
        ),
        routes: [
          GoRoute(
            name: Routes.myDonations,
            path: 'my',
            pageBuilder: (context, state) => const NoTransitionPage(
              name: Routes.myDonations,
              child: MyDonations(),
            ),
          ),
          GoRoute(
            name: Routes.donationDetails,
            path: ':donationId/details',
            pageBuilder: (context, state) {
              final String donationId = state.pathParameters['donationId']!;
              return NoTransitionPage(
                name: Routes.donationDetails,
                child: DonationDetailScreen(
                  id: int.parse(donationId),
                ),
              );
            },
          ),
        ],
      ),
      GoRoute(
        name: Routes.setting,
        path: '/setting',
        pageBuilder: (context, state) => const NoTransitionPage(
          name: Routes.setting,
          child: SettingScreen(),
        ),
      ),
      GoRoute(
          name: Routes.assignModerator,
          path: '/assign-moderator',
          pageBuilder: (context, state) => const NoTransitionPage(
                name: Routes.assignModerator,
                child: AssignModerator(),
              )),
    ],
    redirect: (context, state) {
      final currentPath = state.uri.path;
      if (currentPath == '/') {
        return '/home';
      }

      return null;
    },
  );
}
