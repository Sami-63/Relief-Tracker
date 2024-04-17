import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/model/location/division.dart';
import 'package:relief_tracker/domain/model/query_params.dart';
import 'package:relief_tracker/domain/repository/location_repository.dart';

class GetDivisionsUseCase {
  final LocationRepository _locationRepository;

  const GetDivisionsUseCase({
    required LocationRepository locationRepository,
  }) : _locationRepository = locationRepository;

  Future<Result<List<Division>>> call({
    required List<QueryParam> queryParams,
  }) async {
    return _locationRepository
        .getDivisions(
          queryParams: queryParams,
        )
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
