// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'affected_district_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AffectedDistrictRequest _$AffectedDistrictRequestFromJson(
    Map<String, dynamic> json) {
  return _AffectedDistrictRequest.fromJson(json);
}

/// @nodoc
mixin _$AffectedDistrictRequest {
  @JsonKey(name: 'district')
  int get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'affected_people')
  int get affectedPeople => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AffectedDistrictRequestCopyWith<AffectedDistrictRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AffectedDistrictRequestCopyWith<$Res> {
  factory $AffectedDistrictRequestCopyWith(AffectedDistrictRequest value,
          $Res Function(AffectedDistrictRequest) then) =
      _$AffectedDistrictRequestCopyWithImpl<$Res, AffectedDistrictRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'district') int district,
      @JsonKey(name: 'affected_people') int affectedPeople});
}

/// @nodoc
class _$AffectedDistrictRequestCopyWithImpl<$Res,
        $Val extends AffectedDistrictRequest>
    implements $AffectedDistrictRequestCopyWith<$Res> {
  _$AffectedDistrictRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? district = null,
    Object? affectedPeople = null,
  }) {
    return _then(_value.copyWith(
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as int,
      affectedPeople: null == affectedPeople
          ? _value.affectedPeople
          : affectedPeople // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AffectedDistrictRequestImplCopyWith<$Res>
    implements $AffectedDistrictRequestCopyWith<$Res> {
  factory _$$AffectedDistrictRequestImplCopyWith(
          _$AffectedDistrictRequestImpl value,
          $Res Function(_$AffectedDistrictRequestImpl) then) =
      __$$AffectedDistrictRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'district') int district,
      @JsonKey(name: 'affected_people') int affectedPeople});
}

/// @nodoc
class __$$AffectedDistrictRequestImplCopyWithImpl<$Res>
    extends _$AffectedDistrictRequestCopyWithImpl<$Res,
        _$AffectedDistrictRequestImpl>
    implements _$$AffectedDistrictRequestImplCopyWith<$Res> {
  __$$AffectedDistrictRequestImplCopyWithImpl(
      _$AffectedDistrictRequestImpl _value,
      $Res Function(_$AffectedDistrictRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? district = null,
    Object? affectedPeople = null,
  }) {
    return _then(_$AffectedDistrictRequestImpl(
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
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
class _$AffectedDistrictRequestImpl implements _AffectedDistrictRequest {
  const _$AffectedDistrictRequestImpl(
      {@JsonKey(name: 'district') required this.district,
      @JsonKey(name: 'affected_people') required this.affectedPeople});

  factory _$AffectedDistrictRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AffectedDistrictRequestImplFromJson(json);

  @override
  @JsonKey(name: 'district')
  final int district;
  @override
  @JsonKey(name: 'affected_people')
  final int affectedPeople;

  @override
  String toString() {
    return 'AffectedDistrictRequest(district: $district, affectedPeople: $affectedPeople)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AffectedDistrictRequestImpl &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.affectedPeople, affectedPeople) ||
                other.affectedPeople == affectedPeople));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, district, affectedPeople);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AffectedDistrictRequestImplCopyWith<_$AffectedDistrictRequestImpl>
      get copyWith => __$$AffectedDistrictRequestImplCopyWithImpl<
          _$AffectedDistrictRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AffectedDistrictRequestImplToJson(
      this,
    );
  }
}

abstract class _AffectedDistrictRequest implements AffectedDistrictRequest {
  const factory _AffectedDistrictRequest(
      {@JsonKey(name: 'district') required final int district,
      @JsonKey(name: 'affected_people')
      required final int affectedPeople}) = _$AffectedDistrictRequestImpl;

  factory _AffectedDistrictRequest.fromJson(Map<String, dynamic> json) =
      _$AffectedDistrictRequestImpl.fromJson;

  @override
  @JsonKey(name: 'district')
  int get district;
  @override
  @JsonKey(name: 'affected_people')
  int get affectedPeople;
  @override
  @JsonKey(ignore: true)
  _$$AffectedDistrictRequestImplCopyWith<_$AffectedDistrictRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
