// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'other_donated_location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtherDonatedLocationResponse _$OtherDonatedLocationResponseFromJson(
    Map<String, dynamic> json) {
  return _OtherDonatedLocationResponse.fromJson(json);
}

/// @nodoc
mixin _$OtherDonatedLocationResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_people')
  int get donatedPeople => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_items')
  List<DonationItemResponse> get donatedItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherDonatedLocationResponseCopyWith<OtherDonatedLocationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherDonatedLocationResponseCopyWith<$Res> {
  factory $OtherDonatedLocationResponseCopyWith(
          OtherDonatedLocationResponse value,
          $Res Function(OtherDonatedLocationResponse) then) =
      _$OtherDonatedLocationResponseCopyWithImpl<$Res,
          OtherDonatedLocationResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'donated_people') int donatedPeople,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'donated_items') List<DonationItemResponse> donatedItems});
}

/// @nodoc
class _$OtherDonatedLocationResponseCopyWithImpl<$Res,
        $Val extends OtherDonatedLocationResponse>
    implements $OtherDonatedLocationResponseCopyWith<$Res> {
  _$OtherDonatedLocationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? donatedPeople = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? donatedItems = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
              as List<DonationItemResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtherDonatedLocationResponseImplCopyWith<$Res>
    implements $OtherDonatedLocationResponseCopyWith<$Res> {
  factory _$$OtherDonatedLocationResponseImplCopyWith(
          _$OtherDonatedLocationResponseImpl value,
          $Res Function(_$OtherDonatedLocationResponseImpl) then) =
      __$$OtherDonatedLocationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'donated_people') int donatedPeople,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'donated_items') List<DonationItemResponse> donatedItems});
}

/// @nodoc
class __$$OtherDonatedLocationResponseImplCopyWithImpl<$Res>
    extends _$OtherDonatedLocationResponseCopyWithImpl<$Res,
        _$OtherDonatedLocationResponseImpl>
    implements _$$OtherDonatedLocationResponseImplCopyWith<$Res> {
  __$$OtherDonatedLocationResponseImplCopyWithImpl(
      _$OtherDonatedLocationResponseImpl _value,
      $Res Function(_$OtherDonatedLocationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? donatedPeople = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? donatedItems = null,
  }) {
    return _then(_$OtherDonatedLocationResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
              as List<DonationItemResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtherDonatedLocationResponseImpl
    implements _OtherDonatedLocationResponse {
  const _$OtherDonatedLocationResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'location') required this.location,
      @JsonKey(name: 'donated_people') required this.donatedPeople,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'donated_items')
      required final List<DonationItemResponse> donatedItems})
      : _donatedItems = donatedItems;

  factory _$OtherDonatedLocationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OtherDonatedLocationResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
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
    return 'OtherDonatedLocationResponse(id: $id, location: $location, donatedPeople: $donatedPeople, latitude: $latitude, longitude: $longitude, donatedItems: $donatedItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherDonatedLocationResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
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
  int get hashCode => Object.hash(runtimeType, id, location, donatedPeople,
      latitude, longitude, const DeepCollectionEquality().hash(_donatedItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherDonatedLocationResponseImplCopyWith<
          _$OtherDonatedLocationResponseImpl>
      get copyWith => __$$OtherDonatedLocationResponseImplCopyWithImpl<
          _$OtherDonatedLocationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherDonatedLocationResponseImplToJson(
      this,
    );
  }
}

abstract class _OtherDonatedLocationResponse
    implements OtherDonatedLocationResponse {
  const factory _OtherDonatedLocationResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'location') required final String location,
          @JsonKey(name: 'donated_people') required final int donatedPeople,
          @JsonKey(name: 'latitude') required final double? latitude,
          @JsonKey(name: 'longitude') required final double? longitude,
          @JsonKey(name: 'donated_items')
          required final List<DonationItemResponse> donatedItems}) =
      _$OtherDonatedLocationResponseImpl;

  factory _OtherDonatedLocationResponse.fromJson(Map<String, dynamic> json) =
      _$OtherDonatedLocationResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
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
  List<DonationItemResponse> get donatedItems;
  @override
  @JsonKey(ignore: true)
  _$$OtherDonatedLocationResponseImplCopyWith<
          _$OtherDonatedLocationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
