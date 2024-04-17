// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DivisionResponse _$DivisionResponseFromJson(Map<String, dynamic> json) {
  return _DivisionResponse.fromJson(json);
}

/// @nodoc
mixin _$DivisionResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'bangla_name')
  String get banglaName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DivisionResponseCopyWith<DivisionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionResponseCopyWith<$Res> {
  factory $DivisionResponseCopyWith(
          DivisionResponse value, $Res Function(DivisionResponse) then) =
      _$DivisionResponseCopyWithImpl<$Res, DivisionResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'bangla_name') String banglaName});
}

/// @nodoc
class _$DivisionResponseCopyWithImpl<$Res, $Val extends DivisionResponse>
    implements $DivisionResponseCopyWith<$Res> {
  _$DivisionResponseCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DivisionResponseImplCopyWith<$Res>
    implements $DivisionResponseCopyWith<$Res> {
  factory _$$DivisionResponseImplCopyWith(_$DivisionResponseImpl value,
          $Res Function(_$DivisionResponseImpl) then) =
      __$$DivisionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'bangla_name') String banglaName});
}

/// @nodoc
class __$$DivisionResponseImplCopyWithImpl<$Res>
    extends _$DivisionResponseCopyWithImpl<$Res, _$DivisionResponseImpl>
    implements _$$DivisionResponseImplCopyWith<$Res> {
  __$$DivisionResponseImplCopyWithImpl(_$DivisionResponseImpl _value,
      $Res Function(_$DivisionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? banglaName = null,
  }) {
    return _then(_$DivisionResponseImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DivisionResponseImpl implements _DivisionResponse {
  const _$DivisionResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'bangla_name') required this.banglaName});

  factory _$DivisionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DivisionResponseImplFromJson(json);

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
  String toString() {
    return 'DivisionResponse(id: $id, name: $name, banglaName: $banglaName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DivisionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.banglaName, banglaName) ||
                other.banglaName == banglaName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, banglaName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DivisionResponseImplCopyWith<_$DivisionResponseImpl> get copyWith =>
      __$$DivisionResponseImplCopyWithImpl<_$DivisionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DivisionResponseImplToJson(
      this,
    );
  }
}

abstract class _DivisionResponse implements DivisionResponse {
  const factory _DivisionResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'bangla_name') required final String banglaName}) =
      _$DivisionResponseImpl;

  factory _DivisionResponse.fromJson(Map<String, dynamic> json) =
      _$DivisionResponseImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$DivisionResponseImplCopyWith<_$DivisionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
