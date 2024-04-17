import 'package:relief_tracker/domain/model/core/failure.dart';
import 'package:relief_tracker/domain/model/core/result.dart';
import 'package:relief_tracker/domain/repository/account_repository.dart';

class SignUpUseCase {
  final AccountRepository _accountRepository;

  const SignUpUseCase({
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository;

  Future<Result<void>> call({
    required String username,
    required String password,
    required String email,
    required String firstName,
    required String lastName,
  }) async {
    return _accountRepository
        .signUp(
          username: username,
          password: password,
          email: email,
          firstName: firstName,
          lastName: lastName,
        )
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
