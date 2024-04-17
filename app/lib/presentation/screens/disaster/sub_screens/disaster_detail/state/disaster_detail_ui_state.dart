import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/domain/model/disaster/disaster.dart';

part 'disaster_detail_ui_state.freezed.dart';

@freezed
class DisasterDetailUiState with _$DisasterDetailUiState {
  const factory DisasterDetailUiState.loading() = LoadingState;

  const factory DisasterDetailUiState.success({
    required Disaster disaster,
  }) = SuccessState;

  const factory DisasterDetailUiState.error(String message) = ErrorState;
}
