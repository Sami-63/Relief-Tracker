// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'affected_union_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AffectedUnionResponse _$AffectedUnionResponseFromJson(
    Map<String, dynamic> json) {
  return _AffectedUnionResponse.fromJson(json);
}

/// @nodoc
mixin _$AffectedUnionResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'union')
  UnionResponse get union => throw _privateConstructorUsedError;
  @JsonKey(name: 'affected_people')
  int get affectedPeople => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AffectedUnionResponseCopyWith<AffectedUnionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AffectedUnionResponseCopyWith<$Res> {
  factory $AffectedUnionResponseCopyWith(AffectedUnionResponse value,
          $Res Function(AffectedUnionResponse) then) =
      _$AffectedUnionResponseCopyWithImpl<$Res, AffectedUnionResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'union') UnionResponse union,
      @JsonKey(name: 'affected_people') int affectedPeople});

  $UnionResponseCopyWith<$Res> get union;
}

/// @nodoc
class _$AffectedUnionResponseCopyWithImpl<$Res,
        $Val extends AffectedUnionResponse>
    implements $AffectedUnionResponseCopyWith<$Res> {
  _$AffectedUnionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? union = null,
    Object? affectedPeople = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      union: null == union
          ? _value.union
          : union // ignore: cast_nullable_to_non_nullable
              as UnionResponse,
      affectedPeople: null == affectedPeople
          ? _value.affectedPeople
          : affectedPeople // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnionResponseCopyWith<$Res> get union {
    return $UnionResponseCopyWith<$Res>(_value.union, (value) {
      return _then(_value.copyWith(union: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AffectedUnionResponseImplCopyWith<$Res>
    implements $AffectedUnionResponseCopyWith<$Res> {
  factory _$$AffectedUnionResponseImplCopyWith(
          _$AffectedUnionResponseImpl value,
          $Res Function(_$AffectedUnionResponseImpl) then) =
      __$$AffectedUnionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'union') UnionResponse union,
      @JsonKey(name: 'affected_people') int affectedPeople});

  @override
  $UnionResponseCopyWith<$Res> get union;
}

/// @nodoc
class __$$AffectedUnionResponseImplCopyWithImpl<$Res>
    extends _$AffectedUnionResponseCopyWithImpl<$Res,
        _$AffectedUnionResponseImpl>
    implements _$$AffectedUnionResponseImplCopyWith<$Res> {
  __$$AffectedUnionResponseImplCopyWithImpl(_$AffectedUnionResponseImpl _value,
      $Res Function(_$AffectedUnionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? union = null,
    Object? affectedPeople = null,
  }) {
    return _then(_$AffectedUnionResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      union: null == union
          ? _value.union
          : union // ignore: cast_nullable_to_non_nullable
              as UnionResponse,
      affectedPeople: null == affectedPeople
          ? _value.affectedPeople
          : affectedPeople // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AffectedUnionResponseImpl implements _AffectedUnionResponse {
  const _$AffectedUnionResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'union') required this.union,
      @JsonKey(name: 'affected_people') required this.affectedPeople});

  factory _$AffectedUnionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AffectedUnionResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'union')
  final UnionResponse union;
  @override
  @JsonKey(name: 'affected_people')
  final int affectedPeople;

  @override
  String toString() {
    return 'AffectedUnionResponse(id: $id, union: $union, affectedPeople: $affectedPeople)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AffectedUnionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.union, union) || other.union == union) &&
            (identical(other.affectedPeople, affectedPeople) ||
                other.affectedPeople == affectedPeople));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, union, affectedPeople);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AffectedUnionResponseImplCopyWith<_$AffectedUnionResponseImpl>
      get copyWith => __$$AffectedUnionResponseImplCopyWithImpl<
          _$AffectedUnionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AffectedUnionResponseImplToJson(
      this,
    );
  }
}

abstract class _AffectedUnionResponse implements AffectedUnionResponse {
  const factory _AffectedUnionResponse(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'union') required final UnionResponse union,
      @JsonKey(name: 'affected_people')
      required final int affectedPeople}) = _$AffectedUnionResponseImpl;

  factory _AffectedUnionResponse.fromJson(Map<String, dynamic> json) =
      _$AffectedUnionResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'union')
  UnionResponse get union;
  @override
  @JsonKey(name: 'affected_people')
  int get affectedPeople;
  @override
  @JsonKey(ignore: true)
  _$$AffectedUnionResponseImplCopyWith<_$AffectedUnionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
