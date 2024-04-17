import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/repository/account_repository.dart';

class SignOutUseCase {
  final AccountRepository _accountRepository;

  const SignOutUseCase({
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository;

  Future<Result<void>> call() async {
    return _accountRepository
        .signOut()
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
