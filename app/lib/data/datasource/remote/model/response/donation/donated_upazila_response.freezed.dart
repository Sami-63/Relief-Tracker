// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donated_upazila_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonatedUpazilaResponse _$DonatedUpazilaResponseFromJson(
    Map<String, dynamic> json) {
  return _DonatedUpazilaResponse.fromJson(json);
}

/// @nodoc
mixin _$DonatedUpazilaResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'upazila')
  UpazilaResponse get upazila => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_people')
  int get donatedPeople => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_items')
  List<DonationItemResponse> get donatedItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonatedUpazilaResponseCopyWith<DonatedUpazilaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonatedUpazilaResponseCopyWith<$Res> {
  factory $DonatedUpazilaResponseCopyWith(DonatedUpazilaResponse value,
          $Res Function(DonatedUpazilaResponse) then) =
      _$DonatedUpazilaResponseCopyWithImpl<$Res, DonatedUpazilaResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'upazila') UpazilaResponse upazila,
      @JsonKey(name: 'donated_people') int donatedPeople,
      @JsonKey(name: 'donated_items') List<DonationItemResponse> donatedItems});

  $UpazilaResponseCopyWith<$Res> get upazila;
}

/// @nodoc
class _$DonatedUpazilaResponseCopyWithImpl<$Res,
        $Val extends DonatedUpazilaResponse>
    implements $DonatedUpazilaResponseCopyWith<$Res> {
  _$DonatedUpazilaResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? upazila = null,
    Object? donatedPeople = null,
    Object? donatedItems = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      upazila: null == upazila
          ? _value.upazila
          : upazila // ignore: cast_nullable_to_non_nullable
              as UpazilaResponse,
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
  $UpazilaResponseCopyWith<$Res> get upazila {
    return $UpazilaResponseCopyWith<$Res>(_value.upazila, (value) {
      return _then(_value.copyWith(upazila: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DonatedUpazilaResponseImplCopyWith<$Res>
    implements $DonatedUpazilaResponseCopyWith<$Res> {
  factory _$$DonatedUpazilaResponseImplCopyWith(
          _$DonatedUpazilaResponseImpl value,
          $Res Function(_$DonatedUpazilaResponseImpl) then) =
      __$$DonatedUpazilaResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'upazila') UpazilaResponse upazila,
      @JsonKey(name: 'donated_people') int donatedPeople,
      @JsonKey(name: 'donated_items') List<DonationItemResponse> donatedItems});

  @override
  $UpazilaResponseCopyWith<$Res> get upazila;
}

/// @nodoc
class __$$DonatedUpazilaResponseImplCopyWithImpl<$Res>
    extends _$DonatedUpazilaResponseCopyWithImpl<$Res,
        _$DonatedUpazilaResponseImpl>
    implements _$$DonatedUpazilaResponseImplCopyWith<$Res> {
  __$$DonatedUpazilaResponseImplCopyWithImpl(
      _$DonatedUpazilaResponseImpl _value,
      $Res Function(_$DonatedUpazilaResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? upazila = null,
    Object? donatedPeople = null,
    Object? donatedItems = null,
  }) {
    return _then(_$DonatedUpazilaResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      upazila: null == upazila
          ? _value.upazila
          : upazila // ignore: cast_nullable_to_non_nullable
              as UpazilaResponse,
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
class _$DonatedUpazilaResponseImpl implements _DonatedUpazilaResponse {
  const _$DonatedUpazilaResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'upazila') required this.upazila,
      @JsonKey(name: 'donated_people') required this.donatedPeople,
      @JsonKey(name: 'donated_items')
      required final List<DonationItemResponse> donatedItems})
      : _donatedItems = donatedItems;

  factory _$DonatedUpazilaResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonatedUpazilaResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'upazila')
  final UpazilaResponse upazila;
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
    return 'DonatedUpazilaResponse(id: $id, upazila: $upazila, donatedPeople: $donatedPeople, donatedItems: $donatedItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonatedUpazilaResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.upazila, upazila) || other.upazila == upazila) &&
            (identical(other.donatedPeople, donatedPeople) ||
                other.donatedPeople == donatedPeople) &&
            const DeepCollectionEquality()
                .equals(other._donatedItems, _donatedItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, upazila, donatedPeople,
      const DeepCollectionEquality().hash(_donatedItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonatedUpazilaResponseImplCopyWith<_$DonatedUpazilaResponseImpl>
      get copyWith => __$$DonatedUpazilaResponseImplCopyWithImpl<
          _$DonatedUpazilaResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonatedUpazilaResponseImplToJson(
      this,
    );
  }
}

abstract class _DonatedUpazilaResponse implements DonatedUpazilaResponse {
  const factory _DonatedUpazilaResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'upazila') required final UpazilaResponse upazila,
          @JsonKey(name: 'donated_people') required final int donatedPeople,
          @JsonKey(name: 'donated_items')
          required final List<DonationItemResponse> donatedItems}) =
      _$DonatedUpazilaResponseImpl;

  factory _DonatedUpazilaResponse.fromJson(Map<String, dynamic> json) =
      _$DonatedUpazilaResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'upazila')
  UpazilaResponse get upazila;
  @override
  @JsonKey(name: 'donated_people')
  int get donatedPeople;
  @override
  @JsonKey(name: 'donated_items')
  List<DonationItemResponse> get donatedItems;
  @override
  @JsonKey(ignore: true)
  _$$DonatedUpazilaResponseImplCopyWith<_$DonatedUpazilaResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
