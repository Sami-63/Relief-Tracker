import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/model/location/upazila.dart';
import 'package:relief_tracker/domain/model/query_params.dart';
import 'package:relief_tracker/domain/repository/location_repository.dart';

class GetUpazilasUseCase {
  final LocationRepository _locationRepository;

  const GetUpazilasUseCase({
    required LocationRepository locationRepository,
  }) : _locationRepository = locationRepository;

  Future<Result<List<Upazila>>> call({
    required List<QueryParam> queryParams,
  }) async {
    return _locationRepository
        .getUpazilas(
          queryParams: queryParams,
        )
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
