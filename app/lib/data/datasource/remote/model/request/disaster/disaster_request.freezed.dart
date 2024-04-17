// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disaster_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DisasterRequest _$DisasterRequestFromJson(Map<String, dynamic> json) {
  return _DisasterRequest.fromJson(json);
}

/// @nodoc
mixin _$DisasterRequest {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'affected_districts')
  List<AffectedDistrictRequest> get affectedDistricts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'affected_upazilas')
  List<AffectedUpazilaRequest> get affectedUpazilas =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'affected_unions')
  List<AffectedUnionRequest> get affectedUnions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisasterRequestCopyWith<DisasterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisasterRequestCopyWith<$Res> {
  factory $DisasterRequestCopyWith(
          DisasterRequest value, $Res Function(DisasterRequest) then) =
      _$DisasterRequestCopyWithImpl<$Res, DisasterRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'affected_districts')
      List<AffectedDistrictRequest> affectedDistricts,
      @JsonKey(name: 'affected_upazilas')
      List<AffectedUpazilaRequest> affectedUpazilas,
      @JsonKey(name: 'affected_unions')
      List<AffectedUnionRequest> affectedUnions});
}

/// @nodoc
class _$DisasterRequestCopyWithImpl<$Res, $Val extends DisasterRequest>
    implements $DisasterRequestCopyWith<$Res> {
  _$DisasterRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? affectedDistricts = null,
    Object? affectedUpazilas = null,
    Object? affectedUnions = null,
  }) {
    return _then(_value.copyWith(
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
      affectedDistricts: null == affectedDistricts
          ? _value.affectedDistricts
          : affectedDistricts // ignore: cast_nullable_to_non_nullable
              as List<AffectedDistrictRequest>,
      affectedUpazilas: null == affectedUpazilas
          ? _value.affectedUpazilas
          : affectedUpazilas // ignore: cast_nullable_to_non_nullable
              as List<AffectedUpazilaRequest>,
      affectedUnions: null == affectedUnions
          ? _value.affectedUnions
          : affectedUnions // ignore: cast_nullable_to_non_nullable
              as List<AffectedUnionRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisasterRequestImplCopyWith<$Res>
    implements $DisasterRequestCopyWith<$Res> {
  factory _$$DisasterRequestImplCopyWith(_$DisasterRequestImpl value,
          $Res Function(_$DisasterRequestImpl) then) =
      __$$DisasterRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'affected_districts')
      List<AffectedDistrictRequest> affectedDistricts,
      @JsonKey(name: 'affected_upazilas')
      List<AffectedUpazilaRequest> affectedUpazilas,
      @JsonKey(name: 'affected_unions')
      List<AffectedUnionRequest> affectedUnions});
}

/// @nodoc
class __$$DisasterRequestImplCopyWithImpl<$Res>
    extends _$DisasterRequestCopyWithImpl<$Res, _$DisasterRequestImpl>
    implements _$$DisasterRequestImplCopyWith<$Res> {
  __$$DisasterRequestImplCopyWithImpl(
      _$DisasterRequestImpl _value, $Res Function(_$DisasterRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? affectedDistricts = null,
    Object? affectedUpazilas = null,
    Object? affectedUnions = null,
  }) {
    return _then(_$DisasterRequestImpl(
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
      affectedDistricts: null == affectedDistricts
          ? _value._affectedDistricts
          : affectedDistricts // ignore: cast_nullable_to_non_nullable
              as List<AffectedDistrictRequest>,
      affectedUpazilas: null == affectedUpazilas
          ? _value._affectedUpazilas
          : affectedUpazilas // ignore: cast_nullable_to_non_nullable
              as List<AffectedUpazilaRequest>,
      affectedUnions: null == affectedUnions
          ? _value._affectedUnions
          : affectedUnions // ignore: cast_nullable_to_non_nullable
              as List<AffectedUnionRequest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisasterRequestImpl implements _DisasterRequest {
  const _$DisasterRequestImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime,
      @JsonKey(name: 'affected_districts')
      required final List<AffectedDistrictRequest> affectedDistricts,
      @JsonKey(name: 'affected_upazilas')
      required final List<AffectedUpazilaRequest> affectedUpazilas,
      @JsonKey(name: 'affected_unions')
      required final List<AffectedUnionRequest> affectedUnions})
      : _affectedDistricts = affectedDistricts,
        _affectedUpazilas = affectedUpazilas,
        _affectedUnions = affectedUnions;

  factory _$DisasterRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisasterRequestImplFromJson(json);

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
  final List<AffectedDistrictRequest> _affectedDistricts;
  @override
  @JsonKey(name: 'affected_districts')
  List<AffectedDistrictRequest> get affectedDistricts {
    if (_affectedDistricts is EqualUnmodifiableListView)
      return _affectedDistricts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_affectedDistricts);
  }

  final List<AffectedUpazilaRequest> _affectedUpazilas;
  @override
  @JsonKey(name: 'affected_upazilas')
  List<AffectedUpazilaRequest> get affectedUpazilas {
    if (_affectedUpazilas is EqualUnmodifiableListView)
      return _affectedUpazilas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_affectedUpazilas);
  }

  final List<AffectedUnionRequest> _affectedUnions;
  @override
  @JsonKey(name: 'affected_unions')
  List<AffectedUnionRequest> get affectedUnions {
    if (_affectedUnions is EqualUnmodifiableListView) return _affectedUnions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_affectedUnions);
  }

  @override
  String toString() {
    return 'DisasterRequest(title: $title, description: $description, startTime: $startTime, endTime: $endTime, affectedDistricts: $affectedDistricts, affectedUpazilas: $affectedUpazilas, affectedUnions: $affectedUnions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisasterRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality()
                .equals(other._affectedDistricts, _affectedDistricts) &&
            const DeepCollectionEquality()
                .equals(other._affectedUpazilas, _affectedUpazilas) &&
            const DeepCollectionEquality()
                .equals(other._affectedUnions, _affectedUnions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      startTime,
      endTime,
      const DeepCollectionEquality().hash(_affectedDistricts),
      const DeepCollectionEquality().hash(_affectedUpazilas),
      const DeepCollectionEquality().hash(_affectedUnions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisasterRequestImplCopyWith<_$DisasterRequestImpl> get copyWith =>
      __$$DisasterRequestImplCopyWithImpl<_$DisasterRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisasterRequestImplToJson(
      this,
    );
  }
}

abstract class _DisasterRequest implements DisasterRequest {
  const factory _DisasterRequest(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'start_time') required final String startTime,
          @JsonKey(name: 'end_time') required final String? endTime,
          @JsonKey(name: 'affected_districts')
          required final List<AffectedDistrictRequest> affectedDistricts,
          @JsonKey(name: 'affected_upazilas')
          required final List<AffectedUpazilaRequest> affectedUpazilas,
          @JsonKey(name: 'affected_unions')
          required final List<AffectedUnionRequest> affectedUnions}) =
      _$DisasterRequestImpl;

  factory _DisasterRequest.fromJson(Map<String, dynamic> json) =
      _$DisasterRequestImpl.fromJson;

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
  @JsonKey(name: 'affected_districts')
  List<AffectedDistrictRequest> get affectedDistricts;
  @override
  @JsonKey(name: 'affected_upazilas')
  List<AffectedUpazilaRequest> get affectedUpazilas;
  @override
  @JsonKey(name: 'affected_unions')
  List<AffectedUnionRequest> get affectedUnions;
  @override
  @JsonKey(ignore: true)
  _$$DisasterRequestImplCopyWith<_$DisasterRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
