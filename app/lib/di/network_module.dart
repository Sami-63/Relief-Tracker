import 'package:relief_tracker/data/datasource/remote/api/account_api.dart';
import 'package:relief_tracker/data/datasource/remote/api/account_api_impl.dart';
import 'package:relief_tracker/data/datasource/remote/api/disaster_api.dart';
import 'package:relief_tracker/data/datasource/remote/api/disaster_api_impl.dart';
import 'package:relief_tracker/data/datasource/remote/api/donation_api.dart';
import 'package:relief_tracker/data/datasource/remote/api/donation_api_impl.dart';
import 'package:relief_tracker/data/datasource/remote/api/location_api.dart';
import 'package:relief_tracker/data/datasource/remote/api/location_api_impl.dart';
import 'package:relief_tracker/injection_container.dart';

Future<void> setUpNetworkModule() async {
  // Account
  getIt.registerLazySingleton<AccountApi>(
    () => AccountApiImpl(),
  );

  // Location
  getIt.registerLazySingleton<LocationApi>(
    () => LocationApiImpl(),
  );

  // Disaster
  getIt.registerLazySingleton<DisasterApi>(
    () => DisasterApiImpl(),
  );

  // Donation
  getIt.registerLazySingleton<DonationApi>(
    () => DonationApiImpl(),
  );
}
