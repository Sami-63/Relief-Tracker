// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upazila_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpazilaResponse _$UpazilaResponseFromJson(Map<String, dynamic> json) {
  return _UpazilaResponse.fromJson(json);
}

/// @nodoc
mixin _$UpazilaResponse {
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
  @JsonKey(name: 'district')
  DistrictResponse get district => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpazilaResponseCopyWith<UpazilaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpazilaResponseCopyWith<$Res> {
  factory $UpazilaResponseCopyWith(
          UpazilaResponse value, $Res Function(UpazilaResponse) then) =
      _$UpazilaResponseCopyWithImpl<$Res, UpazilaResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'bangla_name') String banglaName,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'district') DistrictResponse district});

  $DistrictResponseCopyWith<$Res> get district;
}

/// @nodoc
class _$UpazilaResponseCopyWithImpl<$Res, $Val extends UpazilaResponse>
    implements $UpazilaResponseCopyWith<$Res> {
  _$UpazilaResponseCopyWithImpl(this._value, this._then);

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
    Object? district = null,
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
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as DistrictResponse,
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
abstract class _$$UpazilaResponseImplCopyWith<$Res>
    implements $UpazilaResponseCopyWith<$Res> {
  factory _$$UpazilaResponseImplCopyWith(_$UpazilaResponseImpl value,
          $Res Function(_$UpazilaResponseImpl) then) =
      __$$UpazilaResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'bangla_name') String banglaName,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'district') DistrictResponse district});

  @override
  $DistrictResponseCopyWith<$Res> get district;
}

/// @nodoc
class __$$UpazilaResponseImplCopyWithImpl<$Res>
    extends _$UpazilaResponseCopyWithImpl<$Res, _$UpazilaResponseImpl>
    implements _$$UpazilaResponseImplCopyWith<$Res> {
  __$$UpazilaResponseImplCopyWithImpl(
      _$UpazilaResponseImpl _value, $Res Function(_$UpazilaResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? banglaName = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? district = null,
  }) {
    return _then(_$UpazilaResponseImpl(
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
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as DistrictResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpazilaResponseImpl implements _UpazilaResponse {
  const _$UpazilaResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'bangla_name') required this.banglaName,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'district') required this.district});

  factory _$UpazilaResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpazilaResponseImplFromJson(json);

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
  @JsonKey(name: 'district')
  final DistrictResponse district;

  @override
  String toString() {
    return 'UpazilaResponse(id: $id, name: $name, banglaName: $banglaName, latitude: $latitude, longitude: $longitude, district: $district)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpazilaResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.banglaName, banglaName) ||
                other.banglaName == banglaName) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.district, district) ||
                other.district == district));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, banglaName, latitude, longitude, district);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpazilaResponseImplCopyWith<_$UpazilaResponseImpl> get copyWith =>
      __$$UpazilaResponseImplCopyWithImpl<_$UpazilaResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpazilaResponseImplToJson(
      this,
    );
  }
}

abstract class _UpazilaResponse implements UpazilaResponse {
  const factory _UpazilaResponse(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'bangla_name') required final String banglaName,
      @JsonKey(name: 'latitude') required final double? latitude,
      @JsonKey(name: 'longitude') required final double? longitude,
      @JsonKey(name: 'district')
      required final DistrictResponse district}) = _$UpazilaResponseImpl;

  factory _UpazilaResponse.fromJson(Map<String, dynamic> json) =
      _$UpazilaResponseImpl.fromJson;

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
  @JsonKey(name: 'district')
  DistrictResponse get district;
  @override
  @JsonKey(ignore: true)
  _$$UpazilaResponseImplCopyWith<_$UpazilaResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
