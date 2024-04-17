// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'affected_district_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AffectedDistrictResponse _$AffectedDistrictResponseFromJson(
    Map<String, dynamic> json) {
  return _AffectedDistrictResponse.fromJson(json);
}

/// @nodoc
mixin _$AffectedDistrictResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'district')
  DistrictResponse get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'affected_people')
  int get affectedPeople => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AffectedDistrictResponseCopyWith<AffectedDistrictResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AffectedDistrictResponseCopyWith<$Res> {
  factory $AffectedDistrictResponseCopyWith(AffectedDistrictResponse value,
          $Res Function(AffectedDistrictResponse) then) =
      _$AffectedDistrictResponseCopyWithImpl<$Res, AffectedDistrictResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'district') DistrictResponse district,
      @JsonKey(name: 'affected_people') int affectedPeople});

  $DistrictResponseCopyWith<$Res> get district;
}

/// @nodoc
class _$AffectedDistrictResponseCopyWithImpl<$Res,
        $Val extends AffectedDistrictResponse>
    implements $AffectedDistrictResponseCopyWith<$Res> {
  _$AffectedDistrictResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? district = null,
    Object? affectedPeople = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as DistrictResponse,
      affectedPeople: null == affectedPeople
          ? _value.affectedPeople
          : affectedPeople // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DistrictResponseCopyWith<$Res> get district {
    return $DistrictResponseCopyWith<$Res>(_value.district, (value) {
      return _then(_value.copyWith(district: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AffectedDistrictResponseImplCopyWith<$Res>
    implements $AffectedDistrictResponseCopyWith<$Res> {
  factory _$$AffectedDistrictResponseImplCopyWith(
          _$AffectedDistrictResponseImpl value,
          $Res Function(_$AffectedDistrictResponseImpl) then) =
      __$$AffectedDistrictResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'district') DistrictResponse district,
      @JsonKey(name: 'affected_people') int affectedPeople});

  @override
  $DistrictResponseCopyWith<$Res> get district;
}

/// @nodoc
class __$$AffectedDistrictResponseImplCopyWithImpl<$Res>
    extends _$AffectedDistrictResponseCopyWithImpl<$Res,
        _$AffectedDistrictResponseImpl>
    implements _$$AffectedDistrictResponseImplCopyWith<$Res> {
  __$$AffectedDistrictResponseImplCopyWithImpl(
      _$AffectedDistrictResponseImpl _value,
      $Res Function(_$AffectedDistrictResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? district = null,
    Object? affectedPeople = null,
  }) {
    return _then(_$AffectedDistrictResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as DistrictResponse,
      affectedPeople: null == affectedPeople
          ? _value.affectedPeople
          : affectedPeople // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AffectedDistrictResponseImpl implements _AffectedDistrictResponse {
  const _$AffectedDistrictResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'district') required this.district,
      @JsonKey(name: 'affected_people') required this.affectedPeople});

  factory _$AffectedDistrictResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AffectedDistrictResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'district')
  final DistrictResponse district;
  @override
  @JsonKey(name: 'affected_people')
  final int affectedPeople;

  @override
  String toString() {
    return 'AffectedDistrictResponse(id: $id, district: $district, affectedPeople: $affectedPeople)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AffectedDistrictResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.affectedPeople, affectedPeople) ||
                other.affectedPeople == affectedPeople));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, district, affectedPeople);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AffectedDistrictResponseImplCopyWith<_$AffectedDistrictResponseImpl>
      get copyWith => __$$AffectedDistrictResponseImplCopyWithImpl<
          _$AffectedDistrictResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AffectedDistrictResponseImplToJson(
      this,
    );
  }
}

abstract class _AffectedDistrictResponse implements AffectedDistrictResponse {
  const factory _AffectedDistrictResponse(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'district') required final DistrictResponse district,
      @JsonKey(name: 'affected_people')
      required final int affectedPeople}) = _$AffectedDistrictResponseImpl;

  factory _AffectedDistrictResponse.fromJson(Map<String, dynamic> json) =
      _$AffectedDistrictResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'district')
  DistrictResponse get district;
  @override
  @JsonKey(name: 'affected_people')
  int get affectedPeople;
  @override
  @JsonKey(ignore: true)
  _$$AffectedDistrictResponseImplCopyWith<_$AffectedDistrictResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
