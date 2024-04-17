// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'district_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DistrictResponse _$DistrictResponseFromJson(Map<String, dynamic> json) {
  return _DistrictResponse.fromJson(json);
}

/// @nodoc
mixin _$DistrictResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'bangla_name')
  String get banglaName => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'division')
  DivisionResponse get division => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistrictResponseCopyWith<DistrictResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictResponseCopyWith<$Res> {
  factory $DistrictResponseCopyWith(
          DistrictResponse value, $Res Function(DistrictResponse) then) =
      _$DistrictResponseCopyWithImpl<$Res, DistrictResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'bangla_name') String banglaName,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'division') DivisionResponse division});

  $DivisionResponseCopyWith<$Res> get division;
}

/// @nodoc
class _$DistrictResponseCopyWithImpl<$Res, $Val extends DistrictResponse>
    implements $DistrictResponseCopyWith<$Res> {
  _$DistrictResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? banglaName = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? division = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      banglaName: null == banglaName
          ? _value.banglaName
          : banglaName // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as DivisionResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DivisionResponseCopyWith<$Res> get division {
    return $DivisionResponseCopyWith<$Res>(_value.division, (value) {
      return _then(_value.copyWith(division: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DistrictResponseImplCopyWith<$Res>
    implements $DistrictResponseCopyWith<$Res> {
  factory _$$DistrictResponseImplCopyWith(_$DistrictResponseImpl value,
          $Res Function(_$DistrictResponseImpl) then) =
      __$$DistrictResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'bangla_name') String banglaName,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'division') DivisionResponse division});

  @override
  $DivisionResponseCopyWith<$Res> get division;
}

/// @nodoc
class __$$DistrictResponseImplCopyWithImpl<$Res>
    extends _$DistrictResponseCopyWithImpl<$Res, _$DistrictResponseImpl>
    implements _$$DistrictResponseImplCopyWith<$Res> {
  __$$DistrictResponseImplCopyWithImpl(_$DistrictResponseImpl _value,
      $Res Function(_$DistrictResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? banglaName = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? division = null,
  }) {
    return _then(_$DistrictResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      banglaName: null == banglaName
          ? _value.banglaName
          : banglaName // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as DivisionResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistrictResponseImpl implements _DistrictResponse {
  const _$DistrictResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'bangla_name') required this.banglaName,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'division') required this.division});

  factory _$DistrictResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistrictResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'bangla_name')
  final String banglaName;
  @override
  @JsonKey(name: 'latitude')
  final double? latitude;
  @override
  @JsonKey(name: 'longitude')
  final double? longitude;
  @override
  @JsonKey(name: 'division')
  final DivisionResponse division;

  @override
  String toString() {
    return 'DistrictResponse(id: $id, name: $name, banglaName: $banglaName, latitude: $latitude, longitude: $longitude, division: $division)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistrictResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.banglaName, banglaName) ||
                other.banglaName == banglaName) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.division, division) ||
                other.division == division));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, banglaName, latitude, longitude, division);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DistrictResponseImplCopyWith<_$DistrictResponseImpl> get copyWith =>
      __$$DistrictResponseImplCopyWithImpl<_$DistrictResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistrictResponseImplToJson(
      this,
    );
  }
}

abstract class _DistrictResponse implements DistrictResponse {
  const factory _DistrictResponse(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'bangla_name') required final String banglaName,
      @JsonKey(name: 'latitude') required final double? latitude,
      @JsonKey(name: 'longitude') required final double? longitude,
      @JsonKey(name: 'division')
      required final DivisionResponse division}) = _$DistrictResponseImpl;

  factory _DistrictResponse.fromJson(Map<String, dynamic> json) =
      _$DistrictResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'bangla_name')
  String get banglaName;
  @override
  @JsonKey(name: 'latitude')
  double? get latitude;
  @override
  @JsonKey(name: 'longitude')
  double? get longitude;
  @override
  @JsonKey(name: 'division')
  DivisionResponse get division;
  @override
  @JsonKey(ignore: true)
  _$$DistrictResponseImplCopyWith<_$DistrictResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
