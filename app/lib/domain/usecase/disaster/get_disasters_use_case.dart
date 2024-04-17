import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/model/disaster/disaster.dart';
import 'package:relief_tracker/domain/model/query_params.dart';
import 'package:relief_tracker/domain/repository/disaster_repository.dart';

class GetDisastersUseCase {
  final DisasterRepository _disasterRepository;

  const GetDisastersUseCase({
    required DisasterRepository disasterRepository,
  }) : _disasterRepository = disasterRepository;

  Future<Result<List<Disaster>>> call({
    required List<QueryParam> queryParams,
  }) async {
    return _disasterRepository
        .fetchDisasters(queryParams: queryParams)
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
