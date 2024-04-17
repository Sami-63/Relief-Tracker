import 'package:relief_tracker/domain/model/accounts/user.dart';
import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/repository/account_repository.dart';

class GetUserInfoUseCase {
  final AccountRepository _accountRepository;

  const GetUserInfoUseCase({
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository;

  Future<Result<User>> call() async {
    return _accountRepository
        .getUserInfo()
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
