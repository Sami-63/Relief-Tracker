// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donated_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonatedItemRequest _$DonatedItemRequestFromJson(Map<String, dynamic> json) {
  return _DonatedItemRequest.fromJson(json);
}

/// @nodoc
mixin _$DonatedItemRequest {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  double get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit')
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonatedItemRequestCopyWith<DonatedItemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonatedItemRequestCopyWith<$Res> {
  factory $DonatedItemRequestCopyWith(
          DonatedItemRequest value, $Res Function(DonatedItemRequest) then) =
      _$DonatedItemRequestCopyWithImpl<$Res, DonatedItemRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'quantity') double quantity,
      @JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$DonatedItemRequestCopyWithImpl<$Res, $Val extends DonatedItemRequest>
    implements $DonatedItemRequestCopyWith<$Res> {
  _$DonatedItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
    Object? unit = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonatedItemRequestImplCopyWith<$Res>
    implements $DonatedItemRequestCopyWith<$Res> {
  factory _$$DonatedItemRequestImplCopyWith(_$DonatedItemRequestImpl value,
          $Res Function(_$DonatedItemRequestImpl) then) =
      __$$DonatedItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'quantity') double quantity,
      @JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$$DonatedItemRequestImplCopyWithImpl<$Res>
    extends _$DonatedItemRequestCopyWithImpl<$Res, _$DonatedItemRequestImpl>
    implements _$$DonatedItemRequestImplCopyWith<$Res> {
  __$$DonatedItemRequestImplCopyWithImpl(_$DonatedItemRequestImpl _value,
      $Res Function(_$DonatedItemRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
    Object? unit = null,
    Object? description = freezed,
  }) {
    return _then(_$DonatedItemRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonatedItemRequestImpl implements _DonatedItemRequest {
  const _$DonatedItemRequestImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'quantity') required this.quantity,
      @JsonKey(name: 'unit') required this.unit,
      @JsonKey(name: 'description') required this.description});

  factory _$DonatedItemRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonatedItemRequestImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'quantity')
  final double quantity;
  @override
  @JsonKey(name: 'unit')
  final String unit;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'DonatedItemRequest(name: $name, quantity: $quantity, unit: $unit, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonatedItemRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, quantity, unit, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonatedItemRequestImplCopyWith<_$DonatedItemRequestImpl> get copyWith =>
      __$$DonatedItemRequestImplCopyWithImpl<_$DonatedItemRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonatedItemRequestImplToJson(
      this,
    );
  }
}

abstract class _DonatedItemRequest implements DonatedItemRequest {
  const factory _DonatedItemRequest(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'quantity') required final double quantity,
          @JsonKey(name: 'unit') required final String unit,
          @JsonKey(name: 'description') required final String? description}) =
      _$DonatedItemRequestImpl;

  factory _DonatedItemRequest.fromJson(Map<String, dynamic> json) =
      _$DonatedItemRequestImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'quantity')
  double get quantity;
  @override
  @JsonKey(name: 'unit')
  String get unit;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$DonatedItemRequestImplCopyWith<_$DonatedItemRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
