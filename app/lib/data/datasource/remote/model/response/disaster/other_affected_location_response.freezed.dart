// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'other_affected_location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtherAffectedLocationResponse _$OtherAffectedLocationResponseFromJson(
    Map<String, dynamic> json) {
  return _OtherAffectedLocationResponse.fromJson(json);
}

/// @nodoc
mixin _$OtherAffectedLocationResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'affected_people')
  int get affectedPeople => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherAffectedLocationResponseCopyWith<OtherAffectedLocationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherAffectedLocationResponseCopyWith<$Res> {
  factory $OtherAffectedLocationResponseCopyWith(
          OtherAffectedLocationResponse value,
          $Res Function(OtherAffectedLocationResponse) then) =
      _$OtherAffectedLocationResponseCopyWithImpl<$Res,
          OtherAffectedLocationResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'affected_people') int affectedPeople});
}

/// @nodoc
class _$OtherAffectedLocationResponseCopyWithImpl<$Res,
        $Val extends OtherAffectedLocationResponse>
    implements $OtherAffectedLocationResponseCopyWith<$Res> {
  _$OtherAffectedLocationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? affectedPeople = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$OtherAffectedLocationResponseImplCopyWith<$Res>
    implements $OtherAffectedLocationResponseCopyWith<$Res> {
  factory _$$OtherAffectedLocationResponseImplCopyWith(
          _$OtherAffectedLocationResponseImpl value,
          $Res Function(_$OtherAffectedLocationResponseImpl) then) =
      __$$OtherAffectedLocationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'affected_people') int affectedPeople});
}

/// @nodoc
class __$$OtherAffectedLocationResponseImplCopyWithImpl<$Res>
    extends _$OtherAffectedLocationResponseCopyWithImpl<$Res,
        _$OtherAffectedLocationResponseImpl>
    implements _$$OtherAffectedLocationResponseImplCopyWith<$Res> {
  __$$OtherAffectedLocationResponseImplCopyWithImpl(
      _$OtherAffectedLocationResponseImpl _value,
      $Res Function(_$OtherAffectedLocationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? affectedPeople = null,
  }) {
    return _then(_$OtherAffectedLocationResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$OtherAffectedLocationResponseImpl
    implements _OtherAffectedLocationResponse {
  const _$OtherAffectedLocationResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'location') required this.location,
      @JsonKey(name: 'affected_people') required this.affectedPeople});

  factory _$OtherAffectedLocationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OtherAffectedLocationResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'location')
  final String location;
  @override
  @JsonKey(name: 'affected_people')
  final int affectedPeople;

  @override
  String toString() {
    return 'OtherAffectedLocationResponse(id: $id, location: $location, affectedPeople: $affectedPeople)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherAffectedLocationResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.affectedPeople, affectedPeople) ||
                other.affectedPeople == affectedPeople));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, location, affectedPeople);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherAffectedLocationResponseImplCopyWith<
          _$OtherAffectedLocationResponseImpl>
      get copyWith => __$$OtherAffectedLocationResponseImplCopyWithImpl<
          _$OtherAffectedLocationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherAffectedLocationResponseImplToJson(
      this,
    );
  }
}

abstract class _OtherAffectedLocationResponse
    implements OtherAffectedLocationResponse {
  const factory _OtherAffectedLocationResponse(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'location') required final String location,
      @JsonKey(name: 'affected_people')
      required final int affectedPeople}) = _$OtherAffectedLocationResponseImpl;

  factory _OtherAffectedLocationResponse.fromJson(Map<String, dynamic> json) =
      _$OtherAffectedLocationResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'location')
  String get location;
  @override
  @JsonKey(name: 'affected_people')
  int get affectedPeople;
  @override
  @JsonKey(ignore: true)
  _$$OtherAffectedLocationResponseImplCopyWith<
          _$OtherAffectedLocationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
