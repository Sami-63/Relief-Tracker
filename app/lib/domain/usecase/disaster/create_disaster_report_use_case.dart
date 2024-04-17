import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/model/disaster/affected_location.dart';
import 'package:relief_tracker/domain/repository/disaster_repository.dart';

class CreateDisasterReportUseCase {
  final DisasterRepository _disasterRepository;

  const CreateDisasterReportUseCase({
    required DisasterRepository disasterRepository,
  }) : _disasterRepository = disasterRepository;

  Future<Result<void>> call({
    required String title,
    required String description,
    required String startTime,
    required String? endTime,
    required List<AffectedDistrict> affectedDistricts,
    required List<AffectedUpazila> affectedUpazilas,
    required List<AffectedUnion> affectedUnions,
    required List<String> images,
  }) async {
    return _disasterRepository
        .createDisaster(
          title: title,
          description: description,
          startTime: startTime,
          endTime: endTime,
          affectedDistricts: affectedDistricts,
          affectedUpazilas: affectedUpazilas,
          affectedUnions: affectedUnions,
          images: images,
        )
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
