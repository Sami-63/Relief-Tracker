// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'district_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DistrictDetailsResponse _$DistrictDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _DistrictDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$DistrictDetailsResponse {
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

  @JsonKey(name: 'upazilas')
  List<UpazilaResponse> get upazilas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DistrictDetailsResponseCopyWith<DistrictDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictDetailsResponseCopyWith<$Res> {
  factory $DistrictDetailsResponseCopyWith(DistrictDetailsResponse value,
          $Res Function(DistrictDetailsResponse) then) =
      _$DistrictDetailsResponseCopyWithImpl<$Res, DistrictDetailsResponse>;

  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'bangla_name') String banglaName,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'upazilas') List<UpazilaResponse> upazilas});
}

/// @nodoc
class _$DistrictDetailsResponseCopyWithImpl<$Res,
        $Val extends DistrictDetailsResponse>
    implements $DistrictDetailsResponseCopyWith<$Res> {
  _$DistrictDetailsResponseCopyWithImpl(this._value, this._then);

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
    Object? upazilas = null,
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
      upazilas: null == upazilas
          ? _value.upazilas
          : upazilas // ignore: cast_nullable_to_non_nullable
              as List<UpazilaResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistrictDetailsResponseImplCopyWith<$Res>
    implements $DistrictDetailsResponseCopyWith<$Res> {
  factory _$$DistrictDetailsResponseImplCopyWith(
          _$DistrictDetailsResponseImpl value,
          $Res Function(_$DistrictDetailsResponseImpl) then) =
      __$$DistrictDetailsResponseImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'bangla_name') String banglaName,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'upazilas') List<UpazilaResponse> upazilas});
}

/// @nodoc
class __$$DistrictDetailsResponseImplCopyWithImpl<$Res>
    extends _$DistrictDetailsResponseCopyWithImpl<$Res,
        _$DistrictDetailsResponseImpl>
    implements _$$DistrictDetailsResponseImplCopyWith<$Res> {
  __$$DistrictDetailsResponseImplCopyWithImpl(
      _$DistrictDetailsResponseImpl _value,
      $Res Function(_$DistrictDetailsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? banglaName = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? upazilas = null,
  }) {
    return _then(_$DistrictDetailsResponseImpl(
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
      upazilas: null == upazilas
          ? _value._upazilas
          : upazilas // ignore: cast_nullable_to_non_nullable
              as List<UpazilaResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistrictDetailsResponseImpl implements _DistrictDetailsResponse {
  const _$DistrictDetailsResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'bangla_name') required this.banglaName,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'upazilas') required final List<UpazilaResponse> upazilas})
      : _upazilas = upazilas;

  factory _$DistrictDetailsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistrictDetailsResponseImplFromJson(json);

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
  final List<UpazilaResponse> _upazilas;

  @override
  @JsonKey(name: 'upazilas')
  List<UpazilaResponse> get upazilas {
    if (_upazilas is EqualUnmodifiableListView) return _upazilas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upazilas);
  }

  @override
  String toString() {
    return 'DistrictDetailsResponse(id: $id, name: $name, banglaName: $banglaName, latitude: $latitude, longitude: $longitude, upazilas: $upazilas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistrictDetailsResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.banglaName, banglaName) ||
                other.banglaName == banglaName) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality().equals(other._upazilas, _upazilas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, banglaName, latitude,
      longitude, const DeepCollectionEquality().hash(_upazilas));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DistrictDetailsResponseImplCopyWith<_$DistrictDetailsResponseImpl>
      get copyWith => __$$DistrictDetailsResponseImplCopyWithImpl<
          _$DistrictDetailsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistrictDetailsResponseImplToJson(
      this,
    );
  }
}

abstract class _DistrictDetailsResponse implements DistrictDetailsResponse {
  const factory _DistrictDetailsResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'bangla_name') required final String banglaName,
          @JsonKey(name: 'latitude') required final double? latitude,
          @JsonKey(name: 'longitude') required final double? longitude,
          @JsonKey(name: 'upazilas')
          required final List<UpazilaResponse> upazilas}) =
      _$DistrictDetailsResponseImpl;

  factory _DistrictDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$DistrictDetailsResponseImpl.fromJson;

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
  @JsonKey(name: 'upazilas')
  List<UpazilaResponse> get upazilas;

  @override
  @JsonKey(ignore: true)
  _$$DistrictDetailsResponseImplCopyWith<_$DistrictDetailsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
