import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/domain/model/location/district.dart';
import 'package:relief_tracker/domain/model/location/union.dart';
import 'package:relief_tracker/domain/model/location/upazila.dart';

part 'location_ui_state.freezed.dart';

@freezed
class LocationUiState with _$LocationUiState {
  const factory LocationUiState.loading() = LoadingState;

  const factory LocationUiState.success({
    required List<District> districts,
    required List<Upazila> upazilas,
    required List<Union> unions,
  }) = SuccessState;

  const factory LocationUiState.error(String message) = ErrorState;
}
