import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/repository/disaster_repository.dart';

class UploadImagesUseCase {
  final DisasterRepository _disasterRepository;

  const UploadImagesUseCase({
    required DisasterRepository disasterRepository,
  }) : _disasterRepository = disasterRepository;

  Future<Result<List<String>>> call({
    required List<String> imagePaths,
  }) async {
    return _disasterRepository
        .uploadImages(
          imagePaths: imagePaths,
        )
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
