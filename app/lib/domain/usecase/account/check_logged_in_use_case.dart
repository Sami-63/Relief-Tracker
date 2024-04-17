import 'package:relief_tracker/domain/repository/account_repository.dart';

class CheckLoggedInUseCase {
  final AccountRepository _accountRepository;

  const CheckLoggedInUseCase({
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository;

  bool call() => _accountRepository.getToken() != null;
}
