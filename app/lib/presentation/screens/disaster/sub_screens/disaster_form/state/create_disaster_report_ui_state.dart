import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_disaster_report_ui_state.freezed.dart';

@freezed
class CreateDisasterReportUiState with _$CreateDisasterReportUiState {
  const factory CreateDisasterReportUiState.initial() = InitialState;

  const factory CreateDisasterReportUiState.loading() = LoadingState;

  const factory CreateDisasterReportUiState.success() = SuccessState;

  const factory CreateDisasterReportUiState.error(String message) = ErrorState;
}
