// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'union_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnionResponse _$UnionResponseFromJson(Map<String, dynamic> json) {
  return _UnionResponse.fromJson(json);
}

/// @nodoc
mixin _$UnionResponse {
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
  @JsonKey(name: 'upazila')
  UpazilaResponse get upazila => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnionResponseCopyWith<UnionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnionResponseCopyWith<$Res> {
  factory $UnionResponseCopyWith(
          UnionResponse value, $Res Function(UnionResponse) then) =
      _$UnionResponseCopyWithImpl<$Res, UnionResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'bangla_name') String banglaName,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'upazila') UpazilaResponse upazila});

  $UpazilaResponseCopyWith<$Res> get upazila;
}

/// @nodoc
class _$UnionResponseCopyWithImpl<$Res, $Val extends UnionResponse>
    implements $UnionResponseCopyWith<$Res> {
  _$UnionResponseCopyWithImpl(this._value, this._then);

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
    Object? upazila = null,
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
      upazila: null == upazila
          ? _value.upazila
          : upazila // ignore: cast_nullable_to_non_nullable
              as UpazilaResponse,
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
abstract class _$$UnionResponseImplCopyWith<$Res>
    implements $UnionResponseCopyWith<$Res> {
  factory _$$UnionResponseImplCopyWith(
          _$UnionResponseImpl value, $Res Function(_$UnionResponseImpl) then) =
      __$$UnionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'bangla_name') String banglaName,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'upazila') UpazilaResponse upazila});

  @override
  $UpazilaResponseCopyWith<$Res> get upazila;
}

/// @nodoc
class __$$UnionResponseImplCopyWithImpl<$Res>
    extends _$UnionResponseCopyWithImpl<$Res, _$UnionResponseImpl>
    implements _$$UnionResponseImplCopyWith<$Res> {
  __$$UnionResponseImplCopyWithImpl(
      _$UnionResponseImpl _value, $Res Function(_$UnionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? banglaName = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? upazila = null,
  }) {
    return _then(_$UnionResponseImpl(
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
      upazila: null == upazila
          ? _value.upazila
          : upazila // ignore: cast_nullable_to_non_nullable
              as UpazilaResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionResponseImpl implements _UnionResponse {
  const _$UnionResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'bangla_name') required this.banglaName,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'upazila') required this.upazila});

  factory _$UnionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionResponseImplFromJson(json);

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
  @JsonKey(name: 'upazila')
  final UpazilaResponse upazila;

  @override
  String toString() {
    return 'UnionResponse(id: $id, name: $name, banglaName: $banglaName, latitude: $latitude, longitude: $longitude, upazila: $upazila)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.banglaName, banglaName) ||
                other.banglaName == banglaName) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.upazila, upazila) || other.upazila == upazila));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, banglaName, latitude, longitude, upazila);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionResponseImplCopyWith<_$UnionResponseImpl> get copyWith =>
      __$$UnionResponseImplCopyWithImpl<_$UnionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionResponseImplToJson(
      this,
    );
  }
}

abstract class _UnionResponse implements UnionResponse {
  const factory _UnionResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'bangla_name') required final String banglaName,
          @JsonKey(name: 'latitude') required final double? latitude,
          @JsonKey(name: 'longitude') required final double? longitude,
          @JsonKey(name: 'upazila') required final UpazilaResponse upazila}) =
      _$UnionResponseImpl;

  factory _UnionResponse.fromJson(Map<String, dynamic> json) =
      _$UnionResponseImpl.fromJson;

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
  @JsonKey(name: 'upazila')
  UpazilaResponse get upazila;
  @override
  @JsonKey(ignore: true)
  _$$UnionResponseImplCopyWith<_$UnionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
