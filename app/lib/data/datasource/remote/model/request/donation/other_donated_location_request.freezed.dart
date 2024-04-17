// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'other_donated_location_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtherDonatedLocationRequest _$OtherDonatedLocationRequestFromJson(
    Map<String, dynamic> json) {
  return _OtherDonatedLocationRequest.fromJson(json);
}

/// @nodoc
mixin _$OtherDonatedLocationRequest {
  @JsonKey(name: 'location')
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_people')
  int get donatedPeople => throw _privateConstructorUsedError;

  @JsonKey(name: 'latitude')
  double? get latitude => throw _privateConstructorUsedError;

  @JsonKey(name: 'longitude')
  double? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_items')
  List<DonatedItemRequest> get donatedItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherDonatedLocationRequestCopyWith<OtherDonatedLocationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherDonatedLocationRequestCopyWith<$Res> {
  factory $OtherDonatedLocationRequestCopyWith(
          OtherDonatedLocationRequest value,
          $Res Function(OtherDonatedLocationRequest) then) =
      _$OtherDonatedLocationRequestCopyWithImpl<$Res,
          OtherDonatedLocationRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'location') String location,
      @JsonKey(name: 'donated_people') int donatedPeople,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'donated_items') List<DonatedItemRequest> donatedItems});
}

/// @nodoc
class _$OtherDonatedLocationRequestCopyWithImpl<$Res,
        $Val extends OtherDonatedLocationRequest>
    implements $OtherDonatedLocationRequestCopyWith<$Res> {
  _$OtherDonatedLocationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? donatedPeople = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? donatedItems = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      donatedPeople: null == donatedPeople
          ? _value.donatedPeople
          : donatedPeople // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      donatedItems: null == donatedItems
          ? _value.donatedItems
          : donatedItems // ignore: cast_nullable_to_non_nullable
              as List<DonatedItemRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtherDonatedLocationRequestImplCopyWith<$Res>
    implements $OtherDonatedLocationRequestCopyWith<$Res> {
  factory _$$OtherDonatedLocationRequestImplCopyWith(
          _$OtherDonatedLocationRequestImpl value,
          $Res Function(_$OtherDonatedLocationRequestImpl) then) =
      __$$OtherDonatedLocationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'location') String location,
      @JsonKey(name: 'donated_people') int donatedPeople,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'donated_items') List<DonatedItemRequest> donatedItems});
}

/// @nodoc
class __$$OtherDonatedLocationRequestImplCopyWithImpl<$Res>
    extends _$OtherDonatedLocationRequestCopyWithImpl<$Res,
        _$OtherDonatedLocationRequestImpl>
    implements _$$OtherDonatedLocationRequestImplCopyWith<$Res> {
  __$$OtherDonatedLocationRequestImplCopyWithImpl(
      _$OtherDonatedLocationRequestImpl _value,
      $Res Function(_$OtherDonatedLocationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? donatedPeople = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? donatedItems = null,
  }) {
    return _then(_$OtherDonatedLocationRequestImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      donatedPeople: null == donatedPeople
          ? _value.donatedPeople
          : donatedPeople // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      donatedItems: null == donatedItems
          ? _value._donatedItems
          : donatedItems // ignore: cast_nullable_to_non_nullable
              as List<DonatedItemRequest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtherDonatedLocationRequestImpl
    implements _OtherDonatedLocationRequest {
  const _$OtherDonatedLocationRequestImpl(
      {@JsonKey(name: 'location') required this.location,
      @JsonKey(name: 'donated_people') required this.donatedPeople,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'donated_items')
      required final List<DonatedItemRequest> donatedItems})
      : _donatedItems = donatedItems;

  factory _$OtherDonatedLocationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OtherDonatedLocationRequestImplFromJson(json);

  @override
  @JsonKey(name: 'location')
  final String location;
  @override
  @JsonKey(name: 'donated_people')
  final int donatedPeople;
  @override
  @JsonKey(name: 'latitude')
  final double? latitude;
  @override
  @JsonKey(name: 'longitude')
  final double? longitude;
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
    return 'OtherDonatedLocationRequest(location: $location, donatedPeople: $donatedPeople, latitude: $latitude, longitude: $longitude, donatedItems: $donatedItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherDonatedLocationRequestImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.donatedPeople, donatedPeople) ||
                other.donatedPeople == donatedPeople) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality()
                .equals(other._donatedItems, _donatedItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, donatedPeople,
      latitude, longitude, const DeepCollectionEquality().hash(_donatedItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherDonatedLocationRequestImplCopyWith<_$OtherDonatedLocationRequestImpl>
      get copyWith => __$$OtherDonatedLocationRequestImplCopyWithImpl<
          _$OtherDonatedLocationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherDonatedLocationRequestImplToJson(
      this,
    );
  }
}

abstract class _OtherDonatedLocationRequest
    implements OtherDonatedLocationRequest {
  const factory _OtherDonatedLocationRequest(
          {@JsonKey(name: 'location') required final String location,
          @JsonKey(name: 'donated_people') required final int donatedPeople,
          @JsonKey(name: 'latitude') required final double? latitude,
          @JsonKey(name: 'longitude') required final double? longitude,
          @JsonKey(name: 'donated_items')
          required final List<DonatedItemRequest> donatedItems}) =
      _$OtherDonatedLocationRequestImpl;

  factory _OtherDonatedLocationRequest.fromJson(Map<String, dynamic> json) =
      _$OtherDonatedLocationRequestImpl.fromJson;

  @override
  @JsonKey(name: 'location')
  String get location;
  @override
  @JsonKey(name: 'donated_people')
  int get donatedPeople;

  @override
  @JsonKey(name: 'latitude')
  double? get latitude;

  @override
  @JsonKey(name: 'longitude')
  double? get longitude;
  @override
  @JsonKey(name: 'donated_items')
  List<DonatedItemRequest> get donatedItems;
  @override
  @JsonKey(ignore: true)
  _$$OtherDonatedLocationRequestImplCopyWith<_$OtherDonatedLocationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
