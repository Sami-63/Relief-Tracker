// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donated_district_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonatedDistrictRequest _$DonatedDistrictRequestFromJson(
    Map<String, dynamic> json) {
  return _DonatedDistrictRequest.fromJson(json);
}

/// @nodoc
mixin _$DonatedDistrictRequest {
  @JsonKey(name: 'district')
  int get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_people')
  int get donatedPeople => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_items')
  List<DonatedItemRequest> get donatedItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonatedDistrictRequestCopyWith<DonatedDistrictRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonatedDistrictRequestCopyWith<$Res> {
  factory $DonatedDistrictRequestCopyWith(DonatedDistrictRequest value,
          $Res Function(DonatedDistrictRequest) then) =
      _$DonatedDistrictRequestCopyWithImpl<$Res, DonatedDistrictRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'district') int district,
      @JsonKey(name: 'donated_people') int donatedPeople,
      @JsonKey(name: 'donated_items') List<DonatedItemRequest> donatedItems});
}

/// @nodoc
class _$DonatedDistrictRequestCopyWithImpl<$Res,
        $Val extends DonatedDistrictRequest>
    implements $DonatedDistrictRequestCopyWith<$Res> {
  _$DonatedDistrictRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? district = null,
    Object? donatedPeople = null,
    Object? donatedItems = null,
  }) {
    return _then(_value.copyWith(
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DonatedDistrictRequestImplCopyWith<$Res>
    implements $DonatedDistrictRequestCopyWith<$Res> {
  factory _$$DonatedDistrictRequestImplCopyWith(
          _$DonatedDistrictRequestImpl value,
          $Res Function(_$DonatedDistrictRequestImpl) then) =
      __$$DonatedDistrictRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'district') int district,
      @JsonKey(name: 'donated_people') int donatedPeople,
      @JsonKey(name: 'donated_items') List<DonatedItemRequest> donatedItems});
}

/// @nodoc
class __$$DonatedDistrictRequestImplCopyWithImpl<$Res>
    extends _$DonatedDistrictRequestCopyWithImpl<$Res,
        _$DonatedDistrictRequestImpl>
    implements _$$DonatedDistrictRequestImplCopyWith<$Res> {
  __$$DonatedDistrictRequestImplCopyWithImpl(
      _$DonatedDistrictRequestImpl _value,
      $Res Function(_$DonatedDistrictRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? district = null,
    Object? donatedPeople = null,
    Object? donatedItems = null,
  }) {
    return _then(_$DonatedDistrictRequestImpl(
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
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
class _$DonatedDistrictRequestImpl implements _DonatedDistrictRequest {
  const _$DonatedDistrictRequestImpl(
      {@JsonKey(name: 'district') required this.district,
      @JsonKey(name: 'donated_people') required this.donatedPeople,
      @JsonKey(name: 'donated_items')
      required final List<DonatedItemRequest> donatedItems})
      : _donatedItems = donatedItems;

  factory _$DonatedDistrictRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonatedDistrictRequestImplFromJson(json);

  @override
  @JsonKey(name: 'district')
  final int district;
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
    return 'DonatedDistrictRequest(district: $district, donatedPeople: $donatedPeople, donatedItems: $donatedItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonatedDistrictRequestImpl &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.donatedPeople, donatedPeople) ||
                other.donatedPeople == donatedPeople) &&
            const DeepCollectionEquality()
                .equals(other._donatedItems, _donatedItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, district, donatedPeople,
      const DeepCollectionEquality().hash(_donatedItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonatedDistrictRequestImplCopyWith<_$DonatedDistrictRequestImpl>
      get copyWith => __$$DonatedDistrictRequestImplCopyWithImpl<
          _$DonatedDistrictRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonatedDistrictRequestImplToJson(
      this,
    );
  }
}

abstract class _DonatedDistrictRequest implements DonatedDistrictRequest {
  const factory _DonatedDistrictRequest(
          {@JsonKey(name: 'district') required final int district,
          @JsonKey(name: 'donated_people') required final int donatedPeople,
          @JsonKey(name: 'donated_items')
          required final List<DonatedItemRequest> donatedItems}) =
      _$DonatedDistrictRequestImpl;

  factory _DonatedDistrictRequest.fromJson(Map<String, dynamic> json) =
      _$DonatedDistrictRequestImpl.fromJson;

  @override
  @JsonKey(name: 'district')
  int get district;
  @override
  @JsonKey(name: 'donated_people')
  int get donatedPeople;
  @override
  @JsonKey(name: 'donated_items')
  List<DonatedItemRequest> get donatedItems;
  @override
  @JsonKey(ignore: true)
  _$$DonatedDistrictRequestImplCopyWith<_$DonatedDistrictRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
