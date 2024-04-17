import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/model/location/division.dart';
import 'package:relief_tracker/domain/repository/location_repository.dart';

class GetDivisionDetailsUseCase {
  final LocationRepository _locationRepository;

  const GetDivisionDetailsUseCase({
    required LocationRepository locationRepository,
  }) : _locationRepository = locationRepository;

  Future<Result<DivisionDetails>> call({
    required int divisionId,
  }) async {
    return _locationRepository
        .getDivisionDetails(
          divisionId: divisionId,
        )
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
