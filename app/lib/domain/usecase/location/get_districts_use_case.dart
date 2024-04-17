import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/model/location/district.dart';
import 'package:relief_tracker/domain/model/query_params.dart';
import 'package:relief_tracker/domain/repository/location_repository.dart';

class GetDistrictsUseCase {
  final LocationRepository _locationRepository;

  const GetDistrictsUseCase({
    required LocationRepository locationRepository,
  }) : _locationRepository = locationRepository;

  Future<Result<List<District>>> call({
    required List<QueryParam> queryParams,
  }) async {
    return _locationRepository
        .getDistricts(
          queryParams: queryParams,
        )
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
