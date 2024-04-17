// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'affected_upazila_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AffectedUpazilaRequest _$AffectedUpazilaRequestFromJson(
    Map<String, dynamic> json) {
  return _AffectedUpazilaRequest.fromJson(json);
}

/// @nodoc
mixin _$AffectedUpazilaRequest {
  @JsonKey(name: 'upazila')
  int get upazila => throw _privateConstructorUsedError;
  @JsonKey(name: 'affected_people')
  int get affectedPeople => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AffectedUpazilaRequestCopyWith<AffectedUpazilaRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AffectedUpazilaRequestCopyWith<$Res> {
  factory $AffectedUpazilaRequestCopyWith(AffectedUpazilaRequest value,
          $Res Function(AffectedUpazilaRequest) then) =
      _$AffectedUpazilaRequestCopyWithImpl<$Res, AffectedUpazilaRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'upazila') int upazila,
      @JsonKey(name: 'affected_people') int affectedPeople});
}

/// @nodoc
class _$AffectedUpazilaRequestCopyWithImpl<$Res,
        $Val extends AffectedUpazilaRequest>
    implements $AffectedUpazilaRequestCopyWith<$Res> {
  _$AffectedUpazilaRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upazila = null,
    Object? affectedPeople = null,
  }) {
    return _then(_value.copyWith(
      upazila: null == upazila
          ? _value.upazila
          : upazila // ignore: cast_nullable_to_non_nullable
              as int,
      affectedPeople: null == affectedPeople
          ? _value.affectedPeople
          : affectedPeople // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AffectedUpazilaRequestImplCopyWith<$Res>
    implements $AffectedUpazilaRequestCopyWith<$Res> {
  factory _$$AffectedUpazilaRequestImplCopyWith(
          _$AffectedUpazilaRequestImpl value,
          $Res Function(_$AffectedUpazilaRequestImpl) then) =
      __$$AffectedUpazilaRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'upazila') int upazila,
      @JsonKey(name: 'affected_people') int affectedPeople});
}

/// @nodoc
class __$$AffectedUpazilaRequestImplCopyWithImpl<$Res>
    extends _$AffectedUpazilaRequestCopyWithImpl<$Res,
        _$AffectedUpazilaRequestImpl>
    implements _$$AffectedUpazilaRequestImplCopyWith<$Res> {
  __$$AffectedUpazilaRequestImplCopyWithImpl(
      _$AffectedUpazilaRequestImpl _value,
      $Res Function(_$AffectedUpazilaRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upazila = null,
    Object? affectedPeople = null,
  }) {
    return _then(_$AffectedUpazilaRequestImpl(
      upazila: null == upazila
          ? _value.upazila
          : upazila // ignore: cast_nullable_to_non_nullable
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
class _$AffectedUpazilaRequestImpl implements _AffectedUpazilaRequest {
  const _$AffectedUpazilaRequestImpl(
      {@JsonKey(name: 'upazila') required this.upazila,
      @JsonKey(name: 'affected_people') required this.affectedPeople});

  factory _$AffectedUpazilaRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AffectedUpazilaRequestImplFromJson(json);

  @override
  @JsonKey(name: 'upazila')
  final int upazila;
  @override
  @JsonKey(name: 'affected_people')
  final int affectedPeople;

  @override
  String toString() {
    return 'AffectedUpazilaRequest(upazila: $upazila, affectedPeople: $affectedPeople)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AffectedUpazilaRequestImpl &&
            (identical(other.upazila, upazila) || other.upazila == upazila) &&
            (identical(other.affectedPeople, affectedPeople) ||
                other.affectedPeople == affectedPeople));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, upazila, affectedPeople);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AffectedUpazilaRequestImplCopyWith<_$AffectedUpazilaRequestImpl>
      get copyWith => __$$AffectedUpazilaRequestImplCopyWithImpl<
          _$AffectedUpazilaRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AffectedUpazilaRequestImplToJson(
      this,
    );
  }
}

abstract class _AffectedUpazilaRequest implements AffectedUpazilaRequest {
  const factory _AffectedUpazilaRequest(
      {@JsonKey(name: 'upazila') required final int upazila,
      @JsonKey(name: 'affected_people')
      required final int affectedPeople}) = _$AffectedUpazilaRequestImpl;

  factory _AffectedUpazilaRequest.fromJson(Map<String, dynamic> json) =
      _$AffectedUpazilaRequestImpl.fromJson;

  @override
  @JsonKey(name: 'upazila')
  int get upazila;
  @override
  @JsonKey(name: 'affected_people')
  int get affectedPeople;
  @override
  @JsonKey(ignore: true)
  _$$AffectedUpazilaRequestImplCopyWith<_$AffectedUpazilaRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
