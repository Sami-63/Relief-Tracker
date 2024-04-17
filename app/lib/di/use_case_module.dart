import 'package:relief_tracker/domain/usecase/account/check_logged_in_use_case.dart';
import 'package:relief_tracker/domain/usecase/account/get_user_info_use_case.dart';
import 'package:relief_tracker/domain/usecase/account/get_users_use_case.dart';
import 'package:relief_tracker/domain/usecase/account/sign_in_use_case.dart';
import 'package:relief_tracker/domain/usecase/account/sign_out_use_case.dart';
import 'package:relief_tracker/domain/usecase/account/sign_up_use_case.dart';
import 'package:relief_tracker/domain/usecase/account/update_role_use_case.dart';
import 'package:relief_tracker/domain/usecase/disaster/create_disaster_report_use_case.dart';
import 'package:relief_tracker/domain/usecase/disaster/get_disaster_details_use_case.dart';
import 'package:relief_tracker/domain/usecase/disaster/get_disasters_use_case.dart';
import 'package:relief_tracker/domain/usecase/disaster/upload_images_use_case.dart';
import 'package:relief_tracker/domain/usecase/donation/create_donation_use_case.dart';
import 'package:relief_tracker/domain/usecase/donation/get_donation_use_case.dart';
import 'package:relief_tracker/domain/usecase/donation/get_donations_use_case.dart';
import 'package:relief_tracker/domain/usecase/donation/update_donation_state_use_case.dart';
import 'package:relief_tracker/domain/usecase/location/get_district_details_use_case.dart';
import 'package:relief_tracker/domain/usecase/location/get_districts_use_case.dart';
import 'package:relief_tracker/domain/usecase/location/get_division_details_use_case.dart';
import 'package:relief_tracker/domain/usecase/location/get_divisions_use_case.dart';
import 'package:relief_tracker/domain/usecase/location/get_unions_use_case.dart';
import 'package:relief_tracker/domain/usecase/location/get_upazila_details_use_case.dart';
import 'package:relief_tracker/domain/usecase/location/get_upazilas_use_case.dart';
import 'package:relief_tracker/injection_container.dart';

Future<void> setUpUseCaseModule() async {
  await _setUpAccountUseCases();
  await _setUpLocationUseCase();
  await _setUpDisasterUseCases();
  await _setUpDonationUseCases();
}

// Account
Future<void> _setUpAccountUseCases() async {
  getIt.registerLazySingleton(
    () => SignInUseCase(accountRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => GetUserInfoUseCase(accountRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => CheckLoggedInUseCase(accountRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => SignOutUseCase(accountRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => GetUsersUseCase(accountRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => SignUpUseCase(accountRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => UpdateRoleUseCase(accountsRepository: getIt()),
  );
}

// Location
Future<void> _setUpLocationUseCase() async {
  getIt.registerLazySingleton(
    () => GetDivisionsUseCase(locationRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => GetDistrictsUseCase(locationRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => GetUpazilasUseCase(locationRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => GetUnionsUseCase(locationRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => GetDivisionDetailsUseCase(locationRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => GetDistrictDetailsUseCase(locationRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => GetUpazilaDetailsUseCase(locationRepository: getIt()),
  );
}

// Disaster
Future<void> _setUpDisasterUseCases() async {
  getIt.registerLazySingleton(
    () => CreateDisasterReportUseCase(
      disasterRepository: getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => GetDisastersUseCase(
      disasterRepository: getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => GetDisasterDetailsUseCase(
      disasterRepository: getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => UploadImagesUseCase(
      disasterRepository: getIt(),
    ),
  );
}

// Donation
Future<void> _setUpDonationUseCases() async {
  getIt.registerLazySingleton(
    () => CreateDonationUseCase(
      donationRepository: getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => GetDonationsUseCase(
      donationRepository: getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => GetDonationUseCase(
      donationRepository: getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => UpdateDonationStateUseCase(
      donationRepository: getIt(),
    ),
  );
}
