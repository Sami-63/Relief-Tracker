// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DivisionDetailsResponse _$DivisionDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _DivisionDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$DivisionDetailsResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'bangla_name')
  String get banglaName => throw _privateConstructorUsedError;
  @JsonKey(name: 'districts')
  List<DistrictResponse> get districts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DivisionDetailsResponseCopyWith<DivisionDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionDetailsResponseCopyWith<$Res> {
  factory $DivisionDetailsResponseCopyWith(DivisionDetailsResponse value,
          $Res Function(DivisionDetailsResponse) then) =
      _$DivisionDetailsResponseCopyWithImpl<$Res, DivisionDetailsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'bangla_name') String banglaName,
      @JsonKey(name: 'districts') List<DistrictResponse> districts});
}

/// @nodoc
class _$DivisionDetailsResponseCopyWithImpl<$Res,
        $Val extends DivisionDetailsResponse>
    implements $DivisionDetailsResponseCopyWith<$Res> {
  _$DivisionDetailsResponseCopyWithImpl(this._value, this._then);

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
    Object? districts = null,
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
      districts: null == districts
          ? _value.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<DistrictResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DivisionDetailsResponseImplCopyWith<$Res>
    implements $DivisionDetailsResponseCopyWith<$Res> {
  factory _$$DivisionDetailsResponseImplCopyWith(
          _$DivisionDetailsResponseImpl value,
          $Res Function(_$DivisionDetailsResponseImpl) then) =
      __$$DivisionDetailsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'bangla_name') String banglaName,
      @JsonKey(name: 'districts') List<DistrictResponse> districts});
}

/// @nodoc
class __$$DivisionDetailsResponseImplCopyWithImpl<$Res>
    extends _$DivisionDetailsResponseCopyWithImpl<$Res,
        _$DivisionDetailsResponseImpl>
    implements _$$DivisionDetailsResponseImplCopyWith<$Res> {
  __$$DivisionDetailsResponseImplCopyWithImpl(
      _$DivisionDetailsResponseImpl _value,
      $Res Function(_$DivisionDetailsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? banglaName = null,
    Object? districts = null,
  }) {
    return _then(_$DivisionDetailsResponseImpl(
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
      districts: null == districts
          ? _value._districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<DistrictResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DivisionDetailsResponseImpl implements _DivisionDetailsResponse {
  const _$DivisionDetailsResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'bangla_name') required this.banglaName,
      @JsonKey(name: 'districts')
      required final List<DistrictResponse> districts})
      : _districts = districts;

  factory _$DivisionDetailsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DivisionDetailsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'bangla_name')
  final String banglaName;
  final List<DistrictResponse> _districts;
  @override
  @JsonKey(name: 'districts')
  List<DistrictResponse> get districts {
    if (_districts is EqualUnmodifiableListView) return _districts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_districts);
  }

  @override
  String toString() {
    return 'DivisionDetailsResponse(id: $id, name: $name, banglaName: $banglaName, districts: $districts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DivisionDetailsResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.banglaName, banglaName) ||
                other.banglaName == banglaName) &&
            const DeepCollectionEquality()
                .equals(other._districts, _districts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, banglaName,
      const DeepCollectionEquality().hash(_districts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DivisionDetailsResponseImplCopyWith<_$DivisionDetailsResponseImpl>
      get copyWith => __$$DivisionDetailsResponseImplCopyWithImpl<
          _$DivisionDetailsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DivisionDetailsResponseImplToJson(
      this,
    );
  }
}

abstract class _DivisionDetailsResponse implements DivisionDetailsResponse {
  const factory _DivisionDetailsResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'bangla_name') required final String banglaName,
          @JsonKey(name: 'districts')
          required final List<DistrictResponse> districts}) =
      _$DivisionDetailsResponseImpl;

  factory _DivisionDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$DivisionDetailsResponseImpl.fromJson;

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
  @JsonKey(name: 'districts')
  List<DistrictResponse> get districts;
  @override
  @JsonKey(ignore: true)
  _$$DivisionDetailsResponseImplCopyWith<_$DivisionDetailsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
