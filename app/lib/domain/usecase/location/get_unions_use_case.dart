import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/model/location/union.dart';
import 'package:relief_tracker/domain/model/query_params.dart';
import 'package:relief_tracker/domain/repository/location_repository.dart';

class GetUnionsUseCase {
  final LocationRepository _locationRepository;

  const GetUnionsUseCase({
    required LocationRepository locationRepository,
  }) : _locationRepository = locationRepository;

  Future<Result<List<Union>>> call({
    required List<QueryParam> queryParams,
  }) async {
    return _locationRepository
        .getUnions(
          queryParams: queryParams,
        )
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
