// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donated_upazila_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonatedUpazilaRequest _$DonatedUpazilaRequestFromJson(
    Map<String, dynamic> json) {
  return _DonatedUpazilaRequest.fromJson(json);
}

/// @nodoc
mixin _$DonatedUpazilaRequest {
  @JsonKey(name: 'upazila')
  int get upazila => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_people')
  int get donatedPeople => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_items')
  List<DonatedItemRequest> get donatedItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonatedUpazilaRequestCopyWith<DonatedUpazilaRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonatedUpazilaRequestCopyWith<$Res> {
  factory $DonatedUpazilaRequestCopyWith(DonatedUpazilaRequest value,
          $Res Function(DonatedUpazilaRequest) then) =
      _$DonatedUpazilaRequestCopyWithImpl<$Res, DonatedUpazilaRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'upazila') int upazila,
      @JsonKey(name: 'donated_people') int donatedPeople,
      @JsonKey(name: 'donated_items') List<DonatedItemRequest> donatedItems});
}

/// @nodoc
class _$DonatedUpazilaRequestCopyWithImpl<$Res,
        $Val extends DonatedUpazilaRequest>
    implements $DonatedUpazilaRequestCopyWith<$Res> {
  _$DonatedUpazilaRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upazila = null,
    Object? donatedPeople = null,
    Object? donatedItems = null,
  }) {
    return _then(_value.copyWith(
      upazila: null == upazila
          ? _value.upazila
          : upazila // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DonatedUpazilaRequestImplCopyWith<$Res>
    implements $DonatedUpazilaRequestCopyWith<$Res> {
  factory _$$DonatedUpazilaRequestImplCopyWith(
          _$DonatedUpazilaRequestImpl value,
          $Res Function(_$DonatedUpazilaRequestImpl) then) =
      __$$DonatedUpazilaRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'upazila') int upazila,
      @JsonKey(name: 'donated_people') int donatedPeople,
      @JsonKey(name: 'donated_items') List<DonatedItemRequest> donatedItems});
}

/// @nodoc
class __$$DonatedUpazilaRequestImplCopyWithImpl<$Res>
    extends _$DonatedUpazilaRequestCopyWithImpl<$Res,
        _$DonatedUpazilaRequestImpl>
    implements _$$DonatedUpazilaRequestImplCopyWith<$Res> {
  __$$DonatedUpazilaRequestImplCopyWithImpl(_$DonatedUpazilaRequestImpl _value,
      $Res Function(_$DonatedUpazilaRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upazila = null,
    Object? donatedPeople = null,
    Object? donatedItems = null,
  }) {
    return _then(_$DonatedUpazilaRequestImpl(
      upazila: null == upazila
          ? _value.upazila
          : upazila // ignore: cast_nullable_to_non_nullable
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
class _$DonatedUpazilaRequestImpl implements _DonatedUpazilaRequest {
  const _$DonatedUpazilaRequestImpl(
      {@JsonKey(name: 'upazila') required this.upazila,
      @JsonKey(name: 'donated_people') required this.donatedPeople,
      @JsonKey(name: 'donated_items')
      required final List<DonatedItemRequest> donatedItems})
      : _donatedItems = donatedItems;

  factory _$DonatedUpazilaRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonatedUpazilaRequestImplFromJson(json);

  @override
  @JsonKey(name: 'upazila')
  final int upazila;
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
    return 'DonatedUpazilaRequest(upazila: $upazila, donatedPeople: $donatedPeople, donatedItems: $donatedItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonatedUpazilaRequestImpl &&
            (identical(other.upazila, upazila) || other.upazila == upazila) &&
            (identical(other.donatedPeople, donatedPeople) ||
                other.donatedPeople == donatedPeople) &&
            const DeepCollectionEquality()
                .equals(other._donatedItems, _donatedItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, upazila, donatedPeople,
      const DeepCollectionEquality().hash(_donatedItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonatedUpazilaRequestImplCopyWith<_$DonatedUpazilaRequestImpl>
      get copyWith => __$$DonatedUpazilaRequestImplCopyWithImpl<
          _$DonatedUpazilaRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonatedUpazilaRequestImplToJson(
      this,
    );
  }
}

abstract class _DonatedUpazilaRequest implements DonatedUpazilaRequest {
  const factory _DonatedUpazilaRequest(
          {@JsonKey(name: 'upazila') required final int upazila,
          @JsonKey(name: 'donated_people') required final int donatedPeople,
          @JsonKey(name: 'donated_items')
          required final List<DonatedItemRequest> donatedItems}) =
      _$DonatedUpazilaRequestImpl;

  factory _DonatedUpazilaRequest.fromJson(Map<String, dynamic> json) =
      _$DonatedUpazilaRequestImpl.fromJson;

  @override
  @JsonKey(name: 'upazila')
  int get upazila;
  @override
  @JsonKey(name: 'donated_people')
  int get donatedPeople;
  @override
  @JsonKey(name: 'donated_items')
  List<DonatedItemRequest> get donatedItems;
  @override
  @JsonKey(ignore: true)
  _$$DonatedUpazilaRequestImplCopyWith<_$DonatedUpazilaRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
