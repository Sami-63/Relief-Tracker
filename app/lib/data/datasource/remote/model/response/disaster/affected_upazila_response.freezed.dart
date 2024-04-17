// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'affected_upazila_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AffectedUpazilaResponse _$AffectedUpazilaResponseFromJson(
    Map<String, dynamic> json) {
  return _AffectedUpazilaResponse.fromJson(json);
}

/// @nodoc
mixin _$AffectedUpazilaResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'upazila')
  UpazilaResponse get upazila => throw _privateConstructorUsedError;
  @JsonKey(name: 'affected_people')
  int get affectedPeople => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AffectedUpazilaResponseCopyWith<AffectedUpazilaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AffectedUpazilaResponseCopyWith<$Res> {
  factory $AffectedUpazilaResponseCopyWith(AffectedUpazilaResponse value,
          $Res Function(AffectedUpazilaResponse) then) =
      _$AffectedUpazilaResponseCopyWithImpl<$Res, AffectedUpazilaResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'upazila') UpazilaResponse upazila,
      @JsonKey(name: 'affected_people') int affectedPeople});

  $UpazilaResponseCopyWith<$Res> get upazila;
}

/// @nodoc
class _$AffectedUpazilaResponseCopyWithImpl<$Res,
        $Val extends AffectedUpazilaResponse>
    implements $AffectedUpazilaResponseCopyWith<$Res> {
  _$AffectedUpazilaResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? upazila = null,
    Object? affectedPeople = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      upazila: null == upazila
          ? _value.upazila
          : upazila // ignore: cast_nullable_to_non_nullable
              as UpazilaResponse,
      affectedPeople: null == affectedPeople
          ? _value.affectedPeople
          : affectedPeople // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpazilaResponseCopyWith<$Res> get upazila {
    return $UpazilaResponseCopyWith<$Res>(_value.upazila, (value) {
      return _then(_value.copyWith(upazila: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AffectedUpazilaResponseImplCopyWith<$Res>
    implements $AffectedUpazilaResponseCopyWith<$Res> {
  factory _$$AffectedUpazilaResponseImplCopyWith(
          _$AffectedUpazilaResponseImpl value,
          $Res Function(_$AffectedUpazilaResponseImpl) then) =
      __$$AffectedUpazilaResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'upazila') UpazilaResponse upazila,
      @JsonKey(name: 'affected_people') int affectedPeople});

  @override
  $UpazilaResponseCopyWith<$Res> get upazila;
}

/// @nodoc
class __$$AffectedUpazilaResponseImplCopyWithImpl<$Res>
    extends _$AffectedUpazilaResponseCopyWithImpl<$Res,
        _$AffectedUpazilaResponseImpl>
    implements _$$AffectedUpazilaResponseImplCopyWith<$Res> {
  __$$AffectedUpazilaResponseImplCopyWithImpl(
      _$AffectedUpazilaResponseImpl _value,
      $Res Function(_$AffectedUpazilaResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? upazila = null,
    Object? affectedPeople = null,
  }) {
    return _then(_$AffectedUpazilaResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      upazila: null == upazila
          ? _value.upazila
          : upazila // ignore: cast_nullable_to_non_nullable
              as UpazilaResponse,
      affectedPeople: null == affectedPeople
          ? _value.affectedPeople
          : affectedPeople // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AffectedUpazilaResponseImpl implements _AffectedUpazilaResponse {
  const _$AffectedUpazilaResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'upazila') required this.upazila,
      @JsonKey(name: 'affected_people') required this.affectedPeople});

  factory _$AffectedUpazilaResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AffectedUpazilaResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'upazila')
  final UpazilaResponse upazila;
  @override
  @JsonKey(name: 'affected_people')
  final int affectedPeople;

  @override
  String toString() {
    return 'AffectedUpazilaResponse(id: $id, upazila: $upazila, affectedPeople: $affectedPeople)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AffectedUpazilaResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.upazila, upazila) || other.upazila == upazila) &&
            (identical(other.affectedPeople, affectedPeople) ||
                other.affectedPeople == affectedPeople));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, upazila, affectedPeople);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AffectedUpazilaResponseImplCopyWith<_$AffectedUpazilaResponseImpl>
      get copyWith => __$$AffectedUpazilaResponseImplCopyWithImpl<
          _$AffectedUpazilaResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AffectedUpazilaResponseImplToJson(
      this,
    );
  }
}

abstract class _AffectedUpazilaResponse implements AffectedUpazilaResponse {
  const factory _AffectedUpazilaResponse(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'upazila') required final UpazilaResponse upazila,
      @JsonKey(name: 'affected_people')
      required final int affectedPeople}) = _$AffectedUpazilaResponseImpl;

  factory _AffectedUpazilaResponse.fromJson(Map<String, dynamic> json) =
      _$AffectedUpazilaResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'upazila')
  UpazilaResponse get upazila;
  @override
  @JsonKey(name: 'affected_people')
  int get affectedPeople;
  @override
  @JsonKey(ignore: true)
  _$$AffectedUpazilaResponseImplCopyWith<_$AffectedUpazilaResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
