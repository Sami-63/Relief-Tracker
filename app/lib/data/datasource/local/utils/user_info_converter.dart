import 'package:relief_tracker/domain/model/accounts/user.dart';

class UserInfoConverter {
  User fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      username: json['username'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      type: json['type'] as String,
      email: json['email'] as String,
    );
  }

  Map<String, dynamic> toJson(User instance) {
    return {
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'type': instance.type,
    };
  }
}
