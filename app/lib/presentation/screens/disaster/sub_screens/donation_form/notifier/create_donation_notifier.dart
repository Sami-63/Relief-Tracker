import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/domain/model/donation/donated_location.dart';
import 'package:relief_tracker/domain/model/donation/donor_request.dart';
import 'package:relief_tracker/domain/usecase/disaster/upload_images_use_case.dart';
import 'package:relief_tracker/domain/usecase/donation/create_donation_use_case.dart';
import 'package:relief_tracker/injection_container.dart';

import '../state/create_donation_ui_state.dart';

class CreateDonationNotifier extends StateNotifier<CreateDonationUiState> {
  CreateDonationNotifier() : super(const CreateDonationUiState.initial());

  bool _isLoading = false;

  Future<void> createDonation({
    required String title,
    required String description,
    required int disasterId,
    required List<DonorRequestModel> donors,
    required List<DonatedDistrict> donatedDistricts,
    required List<DonatedUpazila> donatedUpazilas,
    required List<DonatedUnion> donatedUnions,
    required List<String> imagePaths,
  }) async {
    if (_isLoading) return;

    state = const CreateDonationUiState.loading();

    _isLoading = true;

    final imageUploadUsecase = getIt<UploadImagesUseCase>();
    final imageUploadResult = await imageUploadUsecase(imagePaths: imagePaths);

    List<String> imageUrls = [];

    imageUploadResult.when(
      success: (data) async {
        imageUrls = data;

        print('Image URLs: $imageUrls');
        for (final url in imageUrls) {
          print('Image URL: $url');
        }

        final useCase = getIt<CreateDonationUseCase>();
        final result = await useCase(
          title: title,
          description: description,
          disasterId: disasterId,
          donors: donors,
          donatedDistricts: donatedDistricts,
          donatedUpazilas: donatedUpazilas,
          donatedUnions: donatedUnions,
          images: imageUrls,
          videos: [],
        );

        state = result.when(
          success: (_) => const CreateDonationUiState.success(),
          failure: (failure) => CreateDonationUiState.error(failure.message),
        );
      },
      failure: (failure) {
        state = CreateDonationUiState.error(failure.message);
        _isLoading = false;
        return;
      },
    );

    _isLoading = false;
  }
}
