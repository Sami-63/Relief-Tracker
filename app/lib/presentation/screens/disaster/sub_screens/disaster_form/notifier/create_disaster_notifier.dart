import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/domain/model/disaster/affected_location.dart';
import 'package:relief_tracker/domain/usecase/disaster/create_disaster_report_use_case.dart';
import 'package:relief_tracker/domain/usecase/disaster/upload_images_use_case.dart';
import 'package:relief_tracker/injection_container.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_form/state/create_disaster_report_ui_state.dart';

typedef DisasterNotifierProvider = AutoDisposeStateNotifierProvider<
    CreateDisasterNotifier, CreateDisasterReportUiState>;

final DisasterNotifierProvider createDisasterNotifierProvider =
    AutoDisposeStateNotifierProvider((ref) => CreateDisasterNotifier());

class CreateDisasterNotifier
    extends StateNotifier<CreateDisasterReportUiState> {
  CreateDisasterNotifier() : super(const CreateDisasterReportUiState.initial());

  bool _isLoading = false;

  Future<void> createDisaster({
    required String title,
    required String description,
    required DateTime startTime,
    required DateTime? endTime,
    required List<AffectedDistrict> affectedDistricts,
    required List<AffectedUpazila> affectedUpazilas,
    required List<AffectedUnion> affectedUnions,
    required List<String> imagePaths,
  }) async {
    if (_isLoading) return;

    state = const CreateDisasterReportUiState.loading();

    _isLoading = true;

    final imageUploadUsecase = getIt<UploadImagesUseCase>();
    final imageUploadResult = await imageUploadUsecase(imagePaths: imagePaths);

    List<String> imageUrls = [];

    imageUploadResult.when(
      success: (data) async {
        imageUrls = data;

        final useCase = getIt<CreateDisasterReportUseCase>();
        final result = await useCase(
          title: title,
          description: description,
          startTime: startTime.toIso8601String(),
          endTime: endTime?.toIso8601String(),
          affectedDistricts: affectedDistricts,
          affectedUpazilas: affectedUpazilas,
          affectedUnions: affectedUnions,
          images: imageUrls,
        );

        state = result.when(
          success: (_) => const CreateDisasterReportUiState.success(),
          failure: (failure) =>
              CreateDisasterReportUiState.error(failure.message),
        );
      },
      failure: (failure) => CreateDisasterReportUiState.error(failure.message),
    );

    _isLoading = false;
  }
}
