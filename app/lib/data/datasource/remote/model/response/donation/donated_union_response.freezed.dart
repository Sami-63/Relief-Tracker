// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donated_union_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonatedUnionResponse _$DonatedUnionResponseFromJson(Map<String, dynamic> json) {
  return _DonatedUnionResponse.fromJson(json);
}

/// @nodoc
mixin _$DonatedUnionResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'union')
  UnionResponse get union => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_people')
  int get donatedPeople => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_items')
  List<DonationItemResponse> get donatedItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonatedUnionResponseCopyWith<DonatedUnionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonatedUnionResponseCopyWith<$Res> {
  factory $DonatedUnionResponseCopyWith(DonatedUnionResponse value,
          $Res Function(DonatedUnionResponse) then) =
      _$DonatedUnionResponseCopyWithImpl<$Res, DonatedUnionResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'union') UnionResponse union,
      @JsonKey(name: 'donated_people') int donatedPeople,
      @JsonKey(name: 'donated_items') List<DonationItemResponse> donatedItems});

  $UnionResponseCopyWith<$Res> get union;
}

/// @nodoc
class _$DonatedUnionResponseCopyWithImpl<$Res,
        $Val extends DonatedUnionResponse>
    implements $DonatedUnionResponseCopyWith<$Res> {
  _$DonatedUnionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? union = null,
    Object? donatedPeople = null,
    Object? donatedItems = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      union: null == union
          ? _value.union
          : union // ignore: cast_nullable_to_non_nullable
              as UnionResponse,
      donatedPeople: null == donatedPeople
          ? _value.donatedPeople
          : donatedPeople // ignore: cast_nullable_to_non_nullable
              as int,
      donatedItems: null == donatedItems
          ? _value.donatedItems
          : donatedItems // ignore: cast_nullable_to_non_nullable
              as List<DonationItemResponse>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnionResponseCopyWith<$Res> get union {
    return $UnionResponseCopyWith<$Res>(_value.union, (value) {
      return _then(_value.copyWith(union: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DonatedUnionResponseImplCopyWith<$Res>
    implements $DonatedUnionResponseCopyWith<$Res> {
  factory _$$DonatedUnionResponseImplCopyWith(_$DonatedUnionResponseImpl value,
          $Res Function(_$DonatedUnionResponseImpl) then) =
      __$$DonatedUnionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'union') UnionResponse union,
      @JsonKey(name: 'donated_people') int donatedPeople,
      @JsonKey(name: 'donated_items') List<DonationItemResponse> donatedItems});

  @override
  $UnionResponseCopyWith<$Res> get union;
}

/// @nodoc
class __$$DonatedUnionResponseImplCopyWithImpl<$Res>
    extends _$DonatedUnionResponseCopyWithImpl<$Res, _$DonatedUnionResponseImpl>
    implements _$$DonatedUnionResponseImplCopyWith<$Res> {
  __$$DonatedUnionResponseImplCopyWithImpl(_$DonatedUnionResponseImpl _value,
      $Res Function(_$DonatedUnionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? union = null,
    Object? donatedPeople = null,
    Object? donatedItems = null,
  }) {
    return _then(_$DonatedUnionResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      union: null == union
          ? _value.union
          : union // ignore: cast_nullable_to_non_nullable
              as UnionResponse,
      donatedPeople: null == donatedPeople
          ? _value.donatedPeople
          : donatedPeople // ignore: cast_nullable_to_non_nullable
              as int,
      donatedItems: null == donatedItems
          ? _value._donatedItems
          : donatedItems // ignore: cast_nullable_to_non_nullable
              as List<DonationItemResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonatedUnionResponseImpl implements _DonatedUnionResponse {
  const _$DonatedUnionResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'union') required this.union,
      @JsonKey(name: 'donated_people') required this.donatedPeople,
      @JsonKey(name: 'donated_items')
      required final List<DonationItemResponse> donatedItems})
      : _donatedItems = donatedItems;

  factory _$DonatedUnionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonatedUnionResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'union')
  final UnionResponse union;
  @override
  @JsonKey(name: 'donated_people')
  final int donatedPeople;
  final List<DonationItemResponse> _donatedItems;
  @override
  @JsonKey(name: 'donated_items')
  List<DonationItemResponse> get donatedItems {
    if (_donatedItems is EqualUnmodifiableListView) return _donatedItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donatedItems);
  }

  @override
  String toString() {
    return 'DonatedUnionResponse(id: $id, union: $union, donatedPeople: $donatedPeople, donatedItems: $donatedItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonatedUnionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.union, union) || other.union == union) &&
            (identical(other.donatedPeople, donatedPeople) ||
                other.donatedPeople == donatedPeople) &&
            const DeepCollectionEquality()
                .equals(other._donatedItems, _donatedItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, union, donatedPeople,
      const DeepCollectionEquality().hash(_donatedItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonatedUnionResponseImplCopyWith<_$DonatedUnionResponseImpl>
      get copyWith =>
          __$$DonatedUnionResponseImplCopyWithImpl<_$DonatedUnionResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonatedUnionResponseImplToJson(
      this,
    );
  }
}

abstract class _DonatedUnionResponse implements DonatedUnionResponse {
  const factory _DonatedUnionResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'union') required final UnionResponse union,
          @JsonKey(name: 'donated_people') required final int donatedPeople,
          @JsonKey(name: 'donated_items')
          required final List<DonationItemResponse> donatedItems}) =
      _$DonatedUnionResponseImpl;

  factory _DonatedUnionResponse.fromJson(Map<String, dynamic> json) =
      _$DonatedUnionResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'union')
  UnionResponse get union;
  @override
  @JsonKey(name: 'donated_people')
  int get donatedPeople;
  @override
  @JsonKey(name: 'donated_items')
  List<DonationItemResponse> get donatedItems;
  @override
  @JsonKey(ignore: true)
  _$$DonatedUnionResponseImplCopyWith<_$DonatedUnionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
