import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/model/location/upazila.dart';
import 'package:relief_tracker/domain/repository/location_repository.dart';

class GetUpazilaDetailsUseCase {
  final LocationRepository _locationRepository;

  const GetUpazilaDetailsUseCase({
    required LocationRepository locationRepository,
  }) : _locationRepository = locationRepository;

  Future<Result<UpazilaDetails>> call({
    required int upazilaId,
  }) async {
    return _locationRepository
        .getUpazilaDetails(
          upazilaId: upazilaId,
        )
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
