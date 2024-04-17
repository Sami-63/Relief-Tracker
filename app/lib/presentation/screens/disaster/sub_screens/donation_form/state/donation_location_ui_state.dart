import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/domain/model/location/district.dart';
import 'package:relief_tracker/domain/model/location/division.dart';
import 'package:relief_tracker/domain/model/location/union.dart';
import 'package:relief_tracker/domain/model/location/upazila.dart';

part 'donation_location_ui_state.freezed.dart';

@freezed
class DonationLocationUiState with _$DonationLocationUiState {
  const factory DonationLocationUiState.loading() = LoadingState;

  const factory DonationLocationUiState.success({
    required List<Division> divisions,
    required List<District> districts,
    required List<Upazila> upazilas,
    required List<Union> unions,
  }) = SuccessState;

  const factory DonationLocationUiState.error(String message) = ErrorState;
}
