import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/repository/account_repository.dart';

class SignInUseCase {
  final AccountRepository _accountRepository;

  const SignInUseCase({
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository;

  Future<Result<void>> call({
    required String username,
    required String password,
  }) async {
    return _accountRepository
        .signIn(
          username: username,
          password: password,
        )
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
