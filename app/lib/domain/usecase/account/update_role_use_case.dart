import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/repository/account_repository.dart';

class UpdateRoleUseCase {
  final AccountRepository _accountsRepository;

  const UpdateRoleUseCase({
    required AccountRepository accountsRepository,
  }) : _accountsRepository = accountsRepository;

  Future<Result<void>> call({
    required int uid,
    required String role,
  }) async {
    return _accountsRepository
        .updateRole(userId: uid, role: role)
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
