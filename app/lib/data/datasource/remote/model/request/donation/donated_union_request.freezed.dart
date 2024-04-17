// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donated_union_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonatedUnionRequest _$DonatedUnionRequestFromJson(Map<String, dynamic> json) {
  return _DonatedUnionRequest.fromJson(json);
}

/// @nodoc
mixin _$DonatedUnionRequest {
  @JsonKey(name: 'union')
  int get union => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_people')
  int get donatedPeople => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_items')
  List<DonatedItemRequest> get donatedItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonatedUnionRequestCopyWith<DonatedUnionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonatedUnionRequestCopyWith<$Res> {
  factory $DonatedUnionRequestCopyWith(
          DonatedUnionRequest value, $Res Function(DonatedUnionRequest) then) =
      _$DonatedUnionRequestCopyWithImpl<$Res, DonatedUnionRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'union') int union,
      @JsonKey(name: 'donated_people') int donatedPeople,
      @JsonKey(name: 'donated_items') List<DonatedItemRequest> donatedItems});
}

/// @nodoc
class _$DonatedUnionRequestCopyWithImpl<$Res, $Val extends DonatedUnionRequest>
    implements $DonatedUnionRequestCopyWith<$Res> {
  _$DonatedUnionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? union = null,
    Object? donatedPeople = null,
    Object? donatedItems = null,
  }) {
    return _then(_value.copyWith(
      union: null == union
          ? _value.union
          : union // ignore: cast_nullable_to_non_nullable
              as int,
      donatedPeople: null == donatedPeople
          ? _value.donatedPeople
          : donatedPeople // ignore: cast_nullable_to_non_nullable
              as int,
      donatedItems: null == donatedItems
          ? _value.donatedItems
          : donatedItems // ignore: cast_nullable_to_non_nullable
              as List<DonatedItemRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonatedUnionRequestImplCopyWith<$Res>
    implements $DonatedUnionRequestCopyWith<$Res> {
  factory _$$DonatedUnionRequestImplCopyWith(_$DonatedUnionRequestImpl value,
          $Res Function(_$DonatedUnionRequestImpl) then) =
      __$$DonatedUnionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'union') int union,
      @JsonKey(name: 'donated_people') int donatedPeople,
      @JsonKey(name: 'donated_items') List<DonatedItemRequest> donatedItems});
}

/// @nodoc
class __$$DonatedUnionRequestImplCopyWithImpl<$Res>
    extends _$DonatedUnionRequestCopyWithImpl<$Res, _$DonatedUnionRequestImpl>
    implements _$$DonatedUnionRequestImplCopyWith<$Res> {
  __$$DonatedUnionRequestImplCopyWithImpl(_$DonatedUnionRequestImpl _value,
      $Res Function(_$DonatedUnionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? union = null,
    Object? donatedPeople = null,
    Object? donatedItems = null,
  }) {
    return _then(_$DonatedUnionRequestImpl(
      union: null == union
          ? _value.union
          : union // ignore: cast_nullable_to_non_nullable
              as int,
      donatedPeople: null == donatedPeople
          ? _value.donatedPeople
          : donatedPeople // ignore: cast_nullable_to_non_nullable
              as int,
      donatedItems: null == donatedItems
          ? _value._donatedItems
          : donatedItems // ignore: cast_nullable_to_non_nullable
              as List<DonatedItemRequest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonatedUnionRequestImpl implements _DonatedUnionRequest {
  const _$DonatedUnionRequestImpl(
      {@JsonKey(name: 'union') required this.union,
      @JsonKey(name: 'donated_people') required this.donatedPeople,
      @JsonKey(name: 'donated_items')
      required final List<DonatedItemRequest> donatedItems})
      : _donatedItems = donatedItems;

  factory _$DonatedUnionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonatedUnionRequestImplFromJson(json);

  @override
  @JsonKey(name: 'union')
  final int union;
  @override
  @JsonKey(name: 'donated_people')
  final int donatedPeople;
  final List<DonatedItemRequest> _donatedItems;
  @override
  @JsonKey(name: 'donated_items')
  List<DonatedItemRequest> get donatedItems {
    if (_donatedItems is EqualUnmodifiableListView) return _donatedItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donatedItems);
  }

  @override
  String toString() {
    return 'DonatedUnionRequest(union: $union, donatedPeople: $donatedPeople, donatedItems: $donatedItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonatedUnionRequestImpl &&
            (identical(other.union, union) || other.union == union) &&
            (identical(other.donatedPeople, donatedPeople) ||
                other.donatedPeople == donatedPeople) &&
            const DeepCollectionEquality()
                .equals(other._donatedItems, _donatedItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, union, donatedPeople,
      const DeepCollectionEquality().hash(_donatedItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonatedUnionRequestImplCopyWith<_$DonatedUnionRequestImpl> get copyWith =>
      __$$DonatedUnionRequestImplCopyWithImpl<_$DonatedUnionRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonatedUnionRequestImplToJson(
      this,
    );
  }
}

abstract class _DonatedUnionRequest implements DonatedUnionRequest {
  const factory _DonatedUnionRequest(
          {@JsonKey(name: 'union') required final int union,
          @JsonKey(name: 'donated_people') required final int donatedPeople,
          @JsonKey(name: 'donated_items')
          required final List<DonatedItemRequest> donatedItems}) =
      _$DonatedUnionRequestImpl;

  factory _DonatedUnionRequest.fromJson(Map<String, dynamic> json) =
      _$DonatedUnionRequestImpl.fromJson;

  @override
  @JsonKey(name: 'union')
  int get union;
  @override
  @JsonKey(name: 'donated_people')
  int get donatedPeople;
  @override
  @JsonKey(name: 'donated_items')
  List<DonatedItemRequest> get donatedItems;
  @override
  @JsonKey(ignore: true)
  _$$DonatedUnionRequestImplCopyWith<_$DonatedUnionRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
