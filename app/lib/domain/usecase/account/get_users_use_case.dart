import 'package:relief_tracker/domain/model/accounts/user.dart';
import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/repository/account_repository.dart';

class GetUsersUseCase {
  final AccountRepository _accountRepository;

  const GetUsersUseCase({
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository;

  Future<Result<List<User>>> call({
    required String query,
  }) async {
    return _accountRepository
        .getUsers(query: query)
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
