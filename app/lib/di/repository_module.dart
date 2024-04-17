import 'package:relief_tracker/data/repository/account_repository_impl.dart';
import 'package:relief_tracker/data/repository/disaster_repository_impl.dart';
import 'package:relief_tracker/data/repository/donation_repository_impl.dart';
import 'package:relief_tracker/data/repository/location_repository_impl.dart';
import 'package:relief_tracker/domain/repository/account_repository.dart';
import 'package:relief_tracker/domain/repository/disaster_repository.dart';
import 'package:relief_tracker/domain/repository/donation_repository.dart';
import 'package:relief_tracker/domain/repository/location_repository.dart';
import 'package:relief_tracker/injection_container.dart';

Future<void> setUpRepositoryModule() async {
  getIt.registerFactory<AccountRepository>(
    () => AccountRepositoryImpl(
      accountRemoteDataSource: getIt(),
      accountLocalDataSource: getIt(),
    ),
  );

  getIt.registerFactory<LocationRepository>(
    () => LocationRepositoryImpl(
      locationDataSource: getIt(),
    ),
  );

  getIt.registerFactory<DisasterRepository>(
    () => DisasterRepositoryImpl(
      disasterRemoteDataSource: getIt(),
    ),
  );

  getIt.registerFactory<DonationRepository>(
    () => DonationRepositoryImpl(
      donationDataSource: getIt(),
    ),
  );
}
