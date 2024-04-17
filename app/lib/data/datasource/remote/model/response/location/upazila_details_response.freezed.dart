// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upazila_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpazilaDetailsResponse _$UpazilaDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _UpazilaDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$UpazilaDetailsResponse {
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
  @JsonKey(name: 'unions')
  List<UnionResponse> get unions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpazilaDetailsResponseCopyWith<UpazilaDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpazilaDetailsResponseCopyWith<$Res> {
  factory $UpazilaDetailsResponseCopyWith(UpazilaDetailsResponse value,
          $Res Function(UpazilaDetailsResponse) then) =
      _$UpazilaDetailsResponseCopyWithImpl<$Res, UpazilaDetailsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'bangla_name') String banglaName,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'unions') List<UnionResponse> unions});
}

/// @nodoc
class _$UpazilaDetailsResponseCopyWithImpl<$Res,
        $Val extends UpazilaDetailsResponse>
    implements $UpazilaDetailsResponseCopyWith<$Res> {
  _$UpazilaDetailsResponseCopyWithImpl(this._value, this._then);

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
    Object? unions = null,
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
      unions: null == unions
          ? _value.unions
          : unions // ignore: cast_nullable_to_non_nullable
              as List<UnionResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpazilaDetailsResponseImplCopyWith<$Res>
    implements $UpazilaDetailsResponseCopyWith<$Res> {
  factory _$$UpazilaDetailsResponseImplCopyWith(
          _$UpazilaDetailsResponseImpl value,
          $Res Function(_$UpazilaDetailsResponseImpl) then) =
      __$$UpazilaDetailsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'bangla_name') String banglaName,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'unions') List<UnionResponse> unions});
}

/// @nodoc
class __$$UpazilaDetailsResponseImplCopyWithImpl<$Res>
    extends _$UpazilaDetailsResponseCopyWithImpl<$Res,
        _$UpazilaDetailsResponseImpl>
    implements _$$UpazilaDetailsResponseImplCopyWith<$Res> {
  __$$UpazilaDetailsResponseImplCopyWithImpl(
      _$UpazilaDetailsResponseImpl _value,
      $Res Function(_$UpazilaDetailsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? banglaName = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? unions = null,
  }) {
    return _then(_$UpazilaDetailsResponseImpl(
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
      unions: null == unions
          ? _value._unions
          : unions // ignore: cast_nullable_to_non_nullable
              as List<UnionResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpazilaDetailsResponseImpl implements _UpazilaDetailsResponse {
  const _$UpazilaDetailsResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'bangla_name') required this.banglaName,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'unions') required final List<UnionResponse> unions})
      : _unions = unions;

  factory _$UpazilaDetailsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpazilaDetailsResponseImplFromJson(json);

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
  final List<UnionResponse> _unions;
  @override
  @JsonKey(name: 'unions')
  List<UnionResponse> get unions {
    if (_unions is EqualUnmodifiableListView) return _unions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unions);
  }

  @override
  String toString() {
    return 'UpazilaDetailsResponse(id: $id, name: $name, banglaName: $banglaName, latitude: $latitude, longitude: $longitude, unions: $unions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpazilaDetailsResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.banglaName, banglaName) ||
                other.banglaName == banglaName) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality().equals(other._unions, _unions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, banglaName, latitude,
      longitude, const DeepCollectionEquality().hash(_unions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpazilaDetailsResponseImplCopyWith<_$UpazilaDetailsResponseImpl>
      get copyWith => __$$UpazilaDetailsResponseImplCopyWithImpl<
          _$UpazilaDetailsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpazilaDetailsResponseImplToJson(
      this,
    );
  }
}

abstract class _UpazilaDetailsResponse implements UpazilaDetailsResponse {
  const factory _UpazilaDetailsResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'bangla_name') required final String banglaName,
          @JsonKey(name: 'latitude') required final double? latitude,
          @JsonKey(name: 'longitude') required final double? longitude,
          @JsonKey(name: 'unions') required final List<UnionResponse> unions}) =
      _$UpazilaDetailsResponseImpl;

  factory _UpazilaDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$UpazilaDetailsResponseImpl.fromJson;

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
  @JsonKey(name: 'unions')
  List<UnionResponse> get unions;
  @override
  @JsonKey(ignore: true)
  _$$UpazilaDetailsResponseImplCopyWith<_$UpazilaDetailsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
