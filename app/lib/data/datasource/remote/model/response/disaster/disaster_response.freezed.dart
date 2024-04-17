// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disaster_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DisasterResponse _$DisasterResponseFromJson(Map<String, dynamic> json) {
  return _DisasterResponse.fromJson(json);
}

/// @nodoc
mixin _$DisasterResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'affected_districts')
  List<AffectedDistrictResponse> get affectedDistricts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'affected_upazilas')
  List<AffectedUpazilaResponse> get affectedUpazilas =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'affected_unions')
  List<AffectedUnionResponse> get affectedUnions =>
      throw _privateConstructorUsedError;

  @JsonKey(name: 'donations')
  List<DonationResponse> get donations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisasterResponseCopyWith<DisasterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisasterResponseCopyWith<$Res> {
  factory $DisasterResponseCopyWith(
          DisasterResponse value, $Res Function(DisasterResponse) then) =
      _$DisasterResponseCopyWithImpl<$Res, DisasterResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'affected_districts')
      List<AffectedDistrictResponse> affectedDistricts,
      @JsonKey(name: 'affected_upazilas')
      List<AffectedUpazilaResponse> affectedUpazilas,
      @JsonKey(name: 'affected_unions')
      List<AffectedUnionResponse> affectedUnions,
      @JsonKey(name: 'donations') List<DonationResponse> donations});
}

/// @nodoc
class _$DisasterResponseCopyWithImpl<$Res, $Val extends DisasterResponse>
    implements $DisasterResponseCopyWith<$Res> {
  _$DisasterResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? images = null,
    Object? affectedDistricts = null,
    Object? affectedUpazilas = null,
    Object? affectedUnions = null,
    Object? donations = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      affectedDistricts: null == affectedDistricts
          ? _value.affectedDistricts
          : affectedDistricts // ignore: cast_nullable_to_non_nullable
              as List<AffectedDistrictResponse>,
      affectedUpazilas: null == affectedUpazilas
          ? _value.affectedUpazilas
          : affectedUpazilas // ignore: cast_nullable_to_non_nullable
              as List<AffectedUpazilaResponse>,
      affectedUnions: null == affectedUnions
          ? _value.affectedUnions
          : affectedUnions // ignore: cast_nullable_to_non_nullable
              as List<AffectedUnionResponse>,
      donations: null == donations
          ? _value.donations
          : donations // ignore: cast_nullable_to_non_nullable
              as List<DonationResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisasterResponseImplCopyWith<$Res>
    implements $DisasterResponseCopyWith<$Res> {
  factory _$$DisasterResponseImplCopyWith(_$DisasterResponseImpl value,
          $Res Function(_$DisasterResponseImpl) then) =
      __$$DisasterResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'affected_districts')
      List<AffectedDistrictResponse> affectedDistricts,
      @JsonKey(name: 'affected_upazilas')
      List<AffectedUpazilaResponse> affectedUpazilas,
      @JsonKey(name: 'affected_unions')
      List<AffectedUnionResponse> affectedUnions,
      @JsonKey(name: 'donations') List<DonationResponse> donations});
}

/// @nodoc
class __$$DisasterResponseImplCopyWithImpl<$Res>
    extends _$DisasterResponseCopyWithImpl<$Res, _$DisasterResponseImpl>
    implements _$$DisasterResponseImplCopyWith<$Res> {
  __$$DisasterResponseImplCopyWithImpl(_$DisasterResponseImpl _value,
      $Res Function(_$DisasterResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? images = null,
    Object? affectedDistricts = null,
    Object? affectedUpazilas = null,
    Object? affectedUnions = null,
    Object? donations = null,
  }) {
    return _then(_$DisasterResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      affectedDistricts: null == affectedDistricts
          ? _value._affectedDistricts
          : affectedDistricts // ignore: cast_nullable_to_non_nullable
              as List<AffectedDistrictResponse>,
      affectedUpazilas: null == affectedUpazilas
          ? _value._affectedUpazilas
          : affectedUpazilas // ignore: cast_nullable_to_non_nullable
              as List<AffectedUpazilaResponse>,
      affectedUnions: null == affectedUnions
          ? _value._affectedUnions
          : affectedUnions // ignore: cast_nullable_to_non_nullable
              as List<AffectedUnionResponse>,
      donations: null == donations
          ? _value._donations
          : donations // ignore: cast_nullable_to_non_nullable
              as List<DonationResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisasterResponseImpl implements _DisasterResponse {
  const _$DisasterResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime,
      @JsonKey(name: 'images') required final List<String> images,
      @JsonKey(name: 'affected_districts')
      required final List<AffectedDistrictResponse> affectedDistricts,
      @JsonKey(name: 'affected_upazilas')
      required final List<AffectedUpazilaResponse> affectedUpazilas,
      @JsonKey(name: 'affected_unions')
      required final List<AffectedUnionResponse> affectedUnions,
      @JsonKey(name: 'donations')
      required final List<DonationResponse> donations})
      : _images = images,
        _affectedDistricts = affectedDistricts,
        _affectedUpazilas = affectedUpazilas,
        _affectedUnions = affectedUnions,
        _donations = donations;

  factory _$DisasterResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisasterResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'start_time')
  final String startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
  final List<String> _images;
  @override
  @JsonKey(name: 'images')
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<AffectedDistrictResponse> _affectedDistricts;
  @override
  @JsonKey(name: 'affected_districts')
  List<AffectedDistrictResponse> get affectedDistricts {
    if (_affectedDistricts is EqualUnmodifiableListView)
      return _affectedDistricts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_affectedDistricts);
  }

  final List<AffectedUpazilaResponse> _affectedUpazilas;
  @override
  @JsonKey(name: 'affected_upazilas')
  List<AffectedUpazilaResponse> get affectedUpazilas {
    if (_affectedUpazilas is EqualUnmodifiableListView)
      return _affectedUpazilas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_affectedUpazilas);
  }

  final List<AffectedUnionResponse> _affectedUnions;
  @override
  @JsonKey(name: 'affected_unions')
  List<AffectedUnionResponse> get affectedUnions {
    if (_affectedUnions is EqualUnmodifiableListView) return _affectedUnions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_affectedUnions);
  }

  final List<DonationResponse> _donations;

  @override
  @JsonKey(name: 'donations')
  List<DonationResponse> get donations {
    if (_donations is EqualUnmodifiableListView) return _donations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donations);
  }

  @override
  String toString() {
    return 'DisasterResponse(id: $id, title: $title, description: $description, startTime: $startTime, endTime: $endTime, images: $images, affectedDistricts: $affectedDistricts, affectedUpazilas: $affectedUpazilas, affectedUnions: $affectedUnions, donations: $donations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisasterResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._affectedDistricts, _affectedDistricts) &&
            const DeepCollectionEquality()
                .equals(other._affectedUpazilas, _affectedUpazilas) &&
            const DeepCollectionEquality()
                .equals(other._affectedUnions, _affectedUnions) &&
            const DeepCollectionEquality()
                .equals(other._donations, _donations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      startTime,
      endTime,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_affectedDistricts),
      const DeepCollectionEquality().hash(_affectedUpazilas),
      const DeepCollectionEquality().hash(_affectedUnions),
      const DeepCollectionEquality().hash(_donations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisasterResponseImplCopyWith<_$DisasterResponseImpl> get copyWith =>
      __$$DisasterResponseImplCopyWithImpl<_$DisasterResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisasterResponseImplToJson(
      this,
    );
  }
}

abstract class _DisasterResponse implements DisasterResponse {
  const factory _DisasterResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'start_time') required final String startTime,
          @JsonKey(name: 'end_time') required final String? endTime,
          @JsonKey(name: 'images') required final List<String> images,
          @JsonKey(name: 'affected_districts')
          required final List<AffectedDistrictResponse> affectedDistricts,
          @JsonKey(name: 'affected_upazilas')
          required final List<AffectedUpazilaResponse> affectedUpazilas,
          @JsonKey(name: 'affected_unions')
          required final List<AffectedUnionResponse> affectedUnions,
          @JsonKey(name: 'donations')
          required final List<DonationResponse> donations}) =
      _$DisasterResponseImpl;

  factory _DisasterResponse.fromJson(Map<String, dynamic> json) =
      _$DisasterResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'start_time')
  String get startTime;
  @override
  @JsonKey(name: 'end_time')
  String? get endTime;
  @override
  @JsonKey(name: 'images')
  List<String> get images;
  @override
  @JsonKey(name: 'affected_districts')
  List<AffectedDistrictResponse> get affectedDistricts;
  @override
  @JsonKey(name: 'affected_upazilas')
  List<AffectedUpazilaResponse> get affectedUpazilas;
  @override
  @JsonKey(name: 'affected_unions')
  List<AffectedUnionResponse> get affectedUnions;

  @override
  @JsonKey(name: 'donations')
  List<DonationResponse> get donations;
  @override
  @JsonKey(ignore: true)
  _$$DisasterResponseImplCopyWith<_$DisasterResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
