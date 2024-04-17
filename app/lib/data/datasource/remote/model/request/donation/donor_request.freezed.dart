// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donor_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonorRequest _$DonorRequestFromJson(Map<String, dynamic> json) {
  return _DonorRequest.fromJson(json);
}

/// @nodoc
mixin _$DonorRequest {
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonorRequestCopyWith<DonorRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonorRequestCopyWith<$Res> {
  factory $DonorRequestCopyWith(
          DonorRequest value, $Res Function(DonorRequest) then) =
      _$DonorRequestCopyWithImpl<$Res, DonorRequest>;
  @useResult
  $Res call({@JsonKey(name: 'username') String username});
}

/// @nodoc
class _$DonorRequestCopyWithImpl<$Res, $Val extends DonorRequest>
    implements $DonorRequestCopyWith<$Res> {
  _$DonorRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonorRequestImplCopyWith<$Res>
    implements $DonorRequestCopyWith<$Res> {
  factory _$$DonorRequestImplCopyWith(
          _$DonorRequestImpl value, $Res Function(_$DonorRequestImpl) then) =
      __$$DonorRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'username') String username});
}

/// @nodoc
class __$$DonorRequestImplCopyWithImpl<$Res>
    extends _$DonorRequestCopyWithImpl<$Res, _$DonorRequestImpl>
    implements _$$DonorRequestImplCopyWith<$Res> {
  __$$DonorRequestImplCopyWithImpl(
      _$DonorRequestImpl _value, $Res Function(_$DonorRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$DonorRequestImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonorRequestImpl implements _DonorRequest {
  const _$DonorRequestImpl({@JsonKey(name: 'username') required this.username});

  factory _$DonorRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonorRequestImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;

  @override
  String toString() {
    return 'DonorRequest(username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonorRequestImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonorRequestImplCopyWith<_$DonorRequestImpl> get copyWith =>
      __$$DonorRequestImplCopyWithImpl<_$DonorRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonorRequestImplToJson(
      this,
    );
  }
}

abstract class _DonorRequest implements DonorRequest {
  const factory _DonorRequest(
          {@JsonKey(name: 'username') required final String username}) =
      _$DonorRequestImpl;

  factory _DonorRequest.fromJson(Map<String, dynamic> json) =
      _$DonorRequestImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$DonorRequestImplCopyWith<_$DonorRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
