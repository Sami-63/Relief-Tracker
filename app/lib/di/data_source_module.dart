import 'package:relief_tracker/data/datasource/local/source/account_local_data_source_impl.dart';
import 'package:relief_tracker/data/datasource/remote/source/account_remote_data_source_impl.dart';
import 'package:relief_tracker/data/datasource/remote/source/disaster_remote_data_source_impl.dart';
import 'package:relief_tracker/data/datasource/remote/source/donation_data_source_impl.dart';
import 'package:relief_tracker/data/datasource/remote/source/location_remote_data_source_impl.dart';
import 'package:relief_tracker/data/repository/source/local/account_local_data_source.dart';
import 'package:relief_tracker/data/repository/source/remote/account_remote_data_source.dart';
import 'package:relief_tracker/data/repository/source/remote/disaster_remote_data_source.dart';
import 'package:relief_tracker/data/repository/source/remote/donation_remote_data_source.dart';
import 'package:relief_tracker/data/repository/source/remote/location_remote_data_source.dart';
import 'package:relief_tracker/injection_container.dart';

Future<void> setUpDataSourceModule() async {
  // Core local

  // Account local
  getIt.registerLazySingleton<AccountLocalDataSource>(
    () => AccountLocalDataSourceImpl(
      sharedPref: getIt(),
    ),
  );

  // Account remote
  getIt.registerLazySingleton<AccountRemoteDataSource>(
    () => AccountRemoteDataSourceImpl(
      accountApi: getIt(),
    ),
  );

  // Location
  getIt.registerLazySingleton<LocationRemoteDataSource>(
    () => LocationRemoteDataSourceImpl(
      locationApi: getIt(),
    ),
  );

  // Disaster
  getIt.registerLazySingleton<DisasterRemoteDataSource>(
    () => DisasterRemoteDataSourceImpl(
      disasterApi: getIt(),
    ),
  );

  // Donation
  getIt.registerLazySingleton<DonationRemoteDataSource>(
    () => DonationRemoteDataSourceImpl(
      donationApi: getIt(),
    ),
  );
}
