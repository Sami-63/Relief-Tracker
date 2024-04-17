// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donated_district_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonatedDistrictResponse _$DonatedDistrictResponseFromJson(
    Map<String, dynamic> json) {
  return _DonatedDistrictResponse.fromJson(json);
}

/// @nodoc
mixin _$DonatedDistrictResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'district')
  DistrictResponse get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_people')
  int get donatedPeople => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_items')
  List<DonationItemResponse> get donatedItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonatedDistrictResponseCopyWith<DonatedDistrictResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonatedDistrictResponseCopyWith<$Res> {
  factory $DonatedDistrictResponseCopyWith(DonatedDistrictResponse value,
          $Res Function(DonatedDistrictResponse) then) =
      _$DonatedDistrictResponseCopyWithImpl<$Res, DonatedDistrictResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'district') DistrictResponse district,
      @JsonKey(name: 'donated_people') int donatedPeople,
      @JsonKey(name: 'donated_items') List<DonationItemResponse> donatedItems});

  $DistrictResponseCopyWith<$Res> get district;
}

/// @nodoc
class _$DonatedDistrictResponseCopyWithImpl<$Res,
        $Val extends DonatedDistrictResponse>
    implements $DonatedDistrictResponseCopyWith<$Res> {
  _$DonatedDistrictResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? district = null,
    Object? donatedPeople = null,
    Object? donatedItems = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as DistrictResponse,
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
  $DistrictResponseCopyWith<$Res> get district {
    return $DistrictResponseCopyWith<$Res>(_value.district, (value) {
      return _then(_value.copyWith(district: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DonatedDistrictResponseImplCopyWith<$Res>
    implements $DonatedDistrictResponseCopyWith<$Res> {
  factory _$$DonatedDistrictResponseImplCopyWith(
          _$DonatedDistrictResponseImpl value,
          $Res Function(_$DonatedDistrictResponseImpl) then) =
      __$$DonatedDistrictResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'district') DistrictResponse district,
      @JsonKey(name: 'donated_people') int donatedPeople,
      @JsonKey(name: 'donated_items') List<DonationItemResponse> donatedItems});

  @override
  $DistrictResponseCopyWith<$Res> get district;
}

/// @nodoc
class __$$DonatedDistrictResponseImplCopyWithImpl<$Res>
    extends _$DonatedDistrictResponseCopyWithImpl<$Res,
        _$DonatedDistrictResponseImpl>
    implements _$$DonatedDistrictResponseImplCopyWith<$Res> {
  __$$DonatedDistrictResponseImplCopyWithImpl(
      _$DonatedDistrictResponseImpl _value,
      $Res Function(_$DonatedDistrictResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? district = null,
    Object? donatedPeople = null,
    Object? donatedItems = null,
  }) {
    return _then(_$DonatedDistrictResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as DistrictResponse,
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
class _$DonatedDistrictResponseImpl implements _DonatedDistrictResponse {
  const _$DonatedDistrictResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'district') required this.district,
      @JsonKey(name: 'donated_people') required this.donatedPeople,
      @JsonKey(name: 'donated_items')
      required final List<DonationItemResponse> donatedItems})
      : _donatedItems = donatedItems;

  factory _$DonatedDistrictResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonatedDistrictResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'district')
  final DistrictResponse district;
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
    return 'DonatedDistrictResponse(id: $id, district: $district, donatedPeople: $donatedPeople, donatedItems: $donatedItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonatedDistrictResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.donatedPeople, donatedPeople) ||
                other.donatedPeople == donatedPeople) &&
            const DeepCollectionEquality()
                .equals(other._donatedItems, _donatedItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, district, donatedPeople,
      const DeepCollectionEquality().hash(_donatedItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonatedDistrictResponseImplCopyWith<_$DonatedDistrictResponseImpl>
      get copyWith => __$$DonatedDistrictResponseImplCopyWithImpl<
          _$DonatedDistrictResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonatedDistrictResponseImplToJson(
      this,
    );
  }
}

abstract class _DonatedDistrictResponse implements DonatedDistrictResponse {
  const factory _DonatedDistrictResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'district') required final DistrictResponse district,
          @JsonKey(name: 'donated_people') required final int donatedPeople,
          @JsonKey(name: 'donated_items')
          required final List<DonationItemResponse> donatedItems}) =
      _$DonatedDistrictResponseImpl;

  factory _DonatedDistrictResponse.fromJson(Map<String, dynamic> json) =
      _$DonatedDistrictResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'district')
  DistrictResponse get district;
  @override
  @JsonKey(name: 'donated_people')
  int get donatedPeople;
  @override
  @JsonKey(name: 'donated_items')
  List<DonationItemResponse> get donatedItems;
  @override
  @JsonKey(ignore: true)
  _$$DonatedDistrictResponseImplCopyWith<_$DonatedDistrictResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
