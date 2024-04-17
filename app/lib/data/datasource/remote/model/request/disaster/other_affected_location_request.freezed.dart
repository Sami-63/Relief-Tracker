// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'other_affected_location_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtherAffectedLocationRequest _$OtherAffectedLocationRequestFromJson(
    Map<String, dynamic> json) {
  return _OtherAffectedLocationRequest.fromJson(json);
}

/// @nodoc
mixin _$OtherAffectedLocationRequest {
  @JsonKey(name: 'location')
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'affected_people')
  int get affectedPeople => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherAffectedLocationRequestCopyWith<OtherAffectedLocationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherAffectedLocationRequestCopyWith<$Res> {
  factory $OtherAffectedLocationRequestCopyWith(
          OtherAffectedLocationRequest value,
          $Res Function(OtherAffectedLocationRequest) then) =
      _$OtherAffectedLocationRequestCopyWithImpl<$Res,
          OtherAffectedLocationRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'location') String location,
      @JsonKey(name: 'affected_people') int affectedPeople});
}

/// @nodoc
class _$OtherAffectedLocationRequestCopyWithImpl<$Res,
        $Val extends OtherAffectedLocationRequest>
    implements $OtherAffectedLocationRequestCopyWith<$Res> {
  _$OtherAffectedLocationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? affectedPeople = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      affectedPeople: null == affectedPeople
          ? _value.affectedPeople
          : affectedPeople // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtherAffectedLocationRequestImplCopyWith<$Res>
    implements $OtherAffectedLocationRequestCopyWith<$Res> {
  factory _$$OtherAffectedLocationRequestImplCopyWith(
          _$OtherAffectedLocationRequestImpl value,
          $Res Function(_$OtherAffectedLocationRequestImpl) then) =
      __$$OtherAffectedLocationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'location') String location,
      @JsonKey(name: 'affected_people') int affectedPeople});
}

/// @nodoc
class __$$OtherAffectedLocationRequestImplCopyWithImpl<$Res>
    extends _$OtherAffectedLocationRequestCopyWithImpl<$Res,
        _$OtherAffectedLocationRequestImpl>
    implements _$$OtherAffectedLocationRequestImplCopyWith<$Res> {
  __$$OtherAffectedLocationRequestImplCopyWithImpl(
      _$OtherAffectedLocationRequestImpl _value,
      $Res Function(_$OtherAffectedLocationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? affectedPeople = null,
  }) {
    return _then(_$OtherAffectedLocationRequestImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      affectedPeople: null == affectedPeople
          ? _value.affectedPeople
          : affectedPeople // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtherAffectedLocationRequestImpl
    implements _OtherAffectedLocationRequest {
  const _$OtherAffectedLocationRequestImpl(
      {@JsonKey(name: 'location') required this.location,
      @JsonKey(name: 'affected_people') required this.affectedPeople});

  factory _$OtherAffectedLocationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OtherAffectedLocationRequestImplFromJson(json);

  @override
  @JsonKey(name: 'location')
  final String location;
  @override
  @JsonKey(name: 'affected_people')
  final int affectedPeople;

  @override
  String toString() {
    return 'OtherAffectedLocationRequest(location: $location, affectedPeople: $affectedPeople)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherAffectedLocationRequestImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.affectedPeople, affectedPeople) ||
                other.affectedPeople == affectedPeople));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, affectedPeople);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherAffectedLocationRequestImplCopyWith<
          _$OtherAffectedLocationRequestImpl>
      get copyWith => __$$OtherAffectedLocationRequestImplCopyWithImpl<
          _$OtherAffectedLocationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherAffectedLocationRequestImplToJson(
      this,
    );
  }
}

abstract class _OtherAffectedLocationRequest
    implements OtherAffectedLocationRequest {
  const factory _OtherAffectedLocationRequest(
      {@JsonKey(name: 'location') required final String location,
      @JsonKey(name: 'affected_people')
      required final int affectedPeople}) = _$OtherAffectedLocationRequestImpl;

  factory _OtherAffectedLocationRequest.fromJson(Map<String, dynamic> json) =
      _$OtherAffectedLocationRequestImpl.fromJson;

  @override
  @JsonKey(name: 'location')
  String get location;
  @override
  @JsonKey(name: 'affected_people')
  int get affectedPeople;
  @override
  @JsonKey(ignore: true)
  _$$OtherAffectedLocationRequestImplCopyWith<
          _$OtherAffectedLocationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
