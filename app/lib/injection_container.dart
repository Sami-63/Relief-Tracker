import 'package:get_it/get_it.dart';
import 'package:relief_tracker/di/cache_module.dart';
import 'package:relief_tracker/di/data_source_module.dart';
import 'package:relief_tracker/di/network_module.dart';
import 'package:relief_tracker/di/repository_module.dart';
import 'package:relief_tracker/di/use_case_module.dart';

final GetIt getIt = GetIt.instance;

Future<void> setup() async {
  await setUpCacheModule();
  await setUpNetworkModule();
  await setUpDataSourceModule();
  await setUpRepositoryModule();
  await setUpUseCaseModule();
  // await setUpServiceModule();
}
