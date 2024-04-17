import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/model/disaster/disaster.dart';
import 'package:relief_tracker/domain/repository/disaster_repository.dart';

class GetDisasterDetailsUseCase {
  final DisasterRepository _disasterRepository;

  const GetDisasterDetailsUseCase({
    required DisasterRepository disasterRepository,
  }) : _disasterRepository = disasterRepository;

  Future<Result<Disaster>> call({required int id}) async {
    return _disasterRepository
        .fetchDisaster(id: id)
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
