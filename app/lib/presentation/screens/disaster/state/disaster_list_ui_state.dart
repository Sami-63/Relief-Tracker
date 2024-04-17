import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/domain/model/disaster/disaster.dart';

part 'disaster_list_ui_state.freezed.dart';

@freezed
class DisasterListUiState with _$DisasterListUiState {
  const factory DisasterListUiState.loading() = LoadingState;

  const factory DisasterListUiState.success({
    required List<Disaster> disasters,
  }) = SuccessState;

  const factory DisasterListUiState.error(String message) = ErrorState;
}
