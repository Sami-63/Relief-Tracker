// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donor_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonorResponse _$DonorResponseFromJson(Map<String, dynamic> json) {
  return _DonorResponse.fromJson(json);
}

/// @nodoc
mixin _$DonorResponse {
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonorResponseCopyWith<DonorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonorResponseCopyWith<$Res> {
  factory $DonorResponseCopyWith(
          DonorResponse value, $Res Function(DonorResponse) then) =
      _$DonorResponseCopyWithImpl<$Res, DonorResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName});
}

/// @nodoc
class _$DonorResponseCopyWithImpl<$Res, $Val extends DonorResponse>
    implements $DonorResponseCopyWith<$Res> {
  _$DonorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonorResponseImplCopyWith<$Res>
    implements $DonorResponseCopyWith<$Res> {
  factory _$$DonorResponseImplCopyWith(
          _$DonorResponseImpl value, $Res Function(_$DonorResponseImpl) then) =
      __$$DonorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName});
}

/// @nodoc
class __$$DonorResponseImplCopyWithImpl<$Res>
    extends _$DonorResponseCopyWithImpl<$Res, _$DonorResponseImpl>
    implements _$$DonorResponseImplCopyWith<$Res> {
  __$$DonorResponseImplCopyWithImpl(
      _$DonorResponseImpl _value, $Res Function(_$DonorResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$DonorResponseImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonorResponseImpl implements _DonorResponse {
  const _$DonorResponseImpl(
      {@JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName});

  factory _$DonorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonorResponseImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;

  @override
  String toString() {
    return 'DonorResponse(username: $username, email: $email, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonorResponseImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, email, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonorResponseImplCopyWith<_$DonorResponseImpl> get copyWith =>
      __$$DonorResponseImplCopyWithImpl<_$DonorResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonorResponseImplToJson(
      this,
    );
  }
}

abstract class _DonorResponse implements DonorResponse {
  const factory _DonorResponse(
          {@JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'first_name') required final String firstName,
          @JsonKey(name: 'last_name') required final String lastName}) =
      _$DonorResponseImpl;

  factory _DonorResponse.fromJson(Map<String, dynamic> json) =
      _$DonorResponseImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$$DonorResponseImplCopyWith<_$DonorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
