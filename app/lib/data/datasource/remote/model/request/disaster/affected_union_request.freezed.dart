// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'affected_union_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AffectedUnionRequest _$AffectedUnionRequestFromJson(Map<String, dynamic> json) {
  return _AffectedUnionRequest.fromJson(json);
}

/// @nodoc
mixin _$AffectedUnionRequest {
  @JsonKey(name: 'union')
  int get union => throw _privateConstructorUsedError;
  @JsonKey(name: 'affected_people')
  int get affectedPeople => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AffectedUnionRequestCopyWith<AffectedUnionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AffectedUnionRequestCopyWith<$Res> {
  factory $AffectedUnionRequestCopyWith(AffectedUnionRequest value,
          $Res Function(AffectedUnionRequest) then) =
      _$AffectedUnionRequestCopyWithImpl<$Res, AffectedUnionRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'union') int union,
      @JsonKey(name: 'affected_people') int affectedPeople});
}

/// @nodoc
class _$AffectedUnionRequestCopyWithImpl<$Res,
        $Val extends AffectedUnionRequest>
    implements $AffectedUnionRequestCopyWith<$Res> {
  _$AffectedUnionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? union = null,
    Object? affectedPeople = null,
  }) {
    return _then(_value.copyWith(
      union: null == union
          ? _value.union
          : union // ignore: cast_nullable_to_non_nullable
              as int,
      affectedPeople: null == affectedPeople
          ? _value.affectedPeople
          : affectedPeople // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AffectedUnionRequestImplCopyWith<$Res>
    implements $AffectedUnionRequestCopyWith<$Res> {
  factory _$$AffectedUnionRequestImplCopyWith(_$AffectedUnionRequestImpl value,
          $Res Function(_$AffectedUnionRequestImpl) then) =
      __$$AffectedUnionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'union') int union,
      @JsonKey(name: 'affected_people') int affectedPeople});
}

/// @nodoc
class __$$AffectedUnionRequestImplCopyWithImpl<$Res>
    extends _$AffectedUnionRequestCopyWithImpl<$Res, _$AffectedUnionRequestImpl>
    implements _$$AffectedUnionRequestImplCopyWith<$Res> {
  __$$AffectedUnionRequestImplCopyWithImpl(_$AffectedUnionRequestImpl _value,
      $Res Function(_$AffectedUnionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? union = null,
    Object? affectedPeople = null,
  }) {
    return _then(_$AffectedUnionRequestImpl(
      union: null == union
          ? _value.union
          : union // ignore: cast_nullable_to_non_nullable
              as int,
      affectedPeople: null == affectedPeople
          ? _value.affectedPeople
          : affectedPeople // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AffectedUnionRequestImpl implements _AffectedUnionRequest {
  const _$AffectedUnionRequestImpl(
      {@JsonKey(name: 'union') required this.union,
      @JsonKey(name: 'affected_people') required this.affectedPeople});

  factory _$AffectedUnionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AffectedUnionRequestImplFromJson(json);

  @override
  @JsonKey(name: 'union')
  final int union;
  @override
  @JsonKey(name: 'affected_people')
  final int affectedPeople;

  @override
  String toString() {
    return 'AffectedUnionRequest(union: $union, affectedPeople: $affectedPeople)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AffectedUnionRequestImpl &&
            (identical(other.union, union) || other.union == union) &&
            (identical(other.affectedPeople, affectedPeople) ||
                other.affectedPeople == affectedPeople));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, union, affectedPeople);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AffectedUnionRequestImplCopyWith<_$AffectedUnionRequestImpl>
      get copyWith =>
          __$$AffectedUnionRequestImplCopyWithImpl<_$AffectedUnionRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AffectedUnionRequestImplToJson(
      this,
    );
  }
}

abstract class _AffectedUnionRequest implements AffectedUnionRequest {
  const factory _AffectedUnionRequest(
      {@JsonKey(name: 'union') required final int union,
      @JsonKey(name: 'affected_people')
      required final int affectedPeople}) = _$AffectedUnionRequestImpl;

  factory _AffectedUnionRequest.fromJson(Map<String, dynamic> json) =
      _$AffectedUnionRequestImpl.fromJson;

  @override
  @JsonKey(name: 'union')
  int get union;
  @override
  @JsonKey(name: 'affected_people')
  int get affectedPeople;
  @override
  @JsonKey(ignore: true)
  _$$AffectedUnionRequestImplCopyWith<_$AffectedUnionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
