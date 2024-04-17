import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/model/location/district.dart';
import 'package:relief_tracker/domain/repository/location_repository.dart';

class GetDistrictDetailsUseCase {
  final LocationRepository _locationRepository;

  const GetDistrictDetailsUseCase({
    required LocationRepository locationRepository,
  }) : _locationRepository = locationRepository;

  Future<Result<DistrictDetails>> call({
    required int districtId,
  }) async {
    return _locationRepository
        .getDistrictDetails(
          districtId: districtId,
        )
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
