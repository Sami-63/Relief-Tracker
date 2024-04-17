import 'package:relief_tracker/data/datasource/remote/model/response/account/user_response.dart';
import 'package:relief_tracker/domain/model/accounts/user.dart';

extension UserMapper on UserResponse {
  User toUser() {
    return User(
      id: id,
      email: email,
      username: username,
      firstName: firstName,
      lastName: lastName,
      type: type,
    );
  }
}
