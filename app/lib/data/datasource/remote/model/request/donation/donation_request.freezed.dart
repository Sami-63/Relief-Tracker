// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonationRequest _$DonationRequestFromJson(Map<String, dynamic> json) {
  return _DonationRequest.fromJson(json);
}

/// @nodoc
mixin _$DonationRequest {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'disaster')
  int get disaster => throw _privateConstructorUsedError;
  @JsonKey(name: 'donors')
  List<DonorRequest> get donors => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_districts')
  List<DonatedDistrictRequest> get donatedDistricts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_upazilas')
  List<DonatedUpazilaRequest> get donatedUpazilas =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_unions')
  List<DonatedUnionRequest> get donatedUnions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'videos')
  List<String> get videos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonationRequestCopyWith<DonationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonationRequestCopyWith<$Res> {
  factory $DonationRequestCopyWith(
          DonationRequest value, $Res Function(DonationRequest) then) =
      _$DonationRequestCopyWithImpl<$Res, DonationRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'disaster') int disaster,
      @JsonKey(name: 'donors') List<DonorRequest> donors,
      @JsonKey(name: 'donated_districts')
      List<DonatedDistrictRequest> donatedDistricts,
      @JsonKey(name: 'donated_upazilas')
      List<DonatedUpazilaRequest> donatedUpazilas,
      @JsonKey(name: 'donated_unions') List<DonatedUnionRequest> donatedUnions,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'videos') List<String> videos});
}

/// @nodoc
class _$DonationRequestCopyWithImpl<$Res, $Val extends DonationRequest>
    implements $DonationRequestCopyWith<$Res> {
  _$DonationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? disaster = null,
    Object? donors = null,
    Object? donatedDistricts = null,
    Object? donatedUpazilas = null,
    Object? donatedUnions = null,
    Object? images = null,
    Object? videos = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      disaster: null == disaster
          ? _value.disaster
          : disaster // ignore: cast_nullable_to_non_nullable
              as int,
      donors: null == donors
          ? _value.donors
          : donors // ignore: cast_nullable_to_non_nullable
              as List<DonorRequest>,
      donatedDistricts: null == donatedDistricts
          ? _value.donatedDistricts
          : donatedDistricts // ignore: cast_nullable_to_non_nullable
              as List<DonatedDistrictRequest>,
      donatedUpazilas: null == donatedUpazilas
          ? _value.donatedUpazilas
          : donatedUpazilas // ignore: cast_nullable_to_non_nullable
              as List<DonatedUpazilaRequest>,
      donatedUnions: null == donatedUnions
          ? _value.donatedUnions
          : donatedUnions // ignore: cast_nullable_to_non_nullable
              as List<DonatedUnionRequest>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonationRequestImplCopyWith<$Res>
    implements $DonationRequestCopyWith<$Res> {
  factory _$$DonationRequestImplCopyWith(_$DonationRequestImpl value,
          $Res Function(_$DonationRequestImpl) then) =
      __$$DonationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'disaster') int disaster,
      @JsonKey(name: 'donors') List<DonorRequest> donors,
      @JsonKey(name: 'donated_districts')
      List<DonatedDistrictRequest> donatedDistricts,
      @JsonKey(name: 'donated_upazilas')
      List<DonatedUpazilaRequest> donatedUpazilas,
      @JsonKey(name: 'donated_unions') List<DonatedUnionRequest> donatedUnions,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'videos') List<String> videos});
}

/// @nodoc
class __$$DonationRequestImplCopyWithImpl<$Res>
    extends _$DonationRequestCopyWithImpl<$Res, _$DonationRequestImpl>
    implements _$$DonationRequestImplCopyWith<$Res> {
  __$$DonationRequestImplCopyWithImpl(
      _$DonationRequestImpl _value, $Res Function(_$DonationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? disaster = null,
    Object? donors = null,
    Object? donatedDistricts = null,
    Object? donatedUpazilas = null,
    Object? donatedUnions = null,
    Object? images = null,
    Object? videos = null,
  }) {
    return _then(_$DonationRequestImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      disaster: null == disaster
          ? _value.disaster
          : disaster // ignore: cast_nullable_to_non_nullable
              as int,
      donors: null == donors
          ? _value._donors
          : donors // ignore: cast_nullable_to_non_nullable
              as List<DonorRequest>,
      donatedDistricts: null == donatedDistricts
          ? _value._donatedDistricts
          : donatedDistricts // ignore: cast_nullable_to_non_nullable
              as List<DonatedDistrictRequest>,
      donatedUpazilas: null == donatedUpazilas
          ? _value._donatedUpazilas
          : donatedUpazilas // ignore: cast_nullable_to_non_nullable
              as List<DonatedUpazilaRequest>,
      donatedUnions: null == donatedUnions
          ? _value._donatedUnions
          : donatedUnions // ignore: cast_nullable_to_non_nullable
              as List<DonatedUnionRequest>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonationRequestImpl implements _DonationRequest {
  const _$DonationRequestImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'disaster') required this.disaster,
      @JsonKey(name: 'donors') required final List<DonorRequest> donors,
      @JsonKey(name: 'donated_districts')
      required final List<DonatedDistrictRequest> donatedDistricts,
      @JsonKey(name: 'donated_upazilas')
      required final List<DonatedUpazilaRequest> donatedUpazilas,
      @JsonKey(name: 'donated_unions')
      required final List<DonatedUnionRequest> donatedUnions,
      @JsonKey(name: 'images') required final List<String> images,
      @JsonKey(name: 'videos') required final List<String> videos})
      : _donors = donors,
        _donatedDistricts = donatedDistricts,
        _donatedUpazilas = donatedUpazilas,
        _donatedUnions = donatedUnions,
        _images = images,
        _videos = videos;

  factory _$DonationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonationRequestImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'disaster')
  final int disaster;
  final List<DonorRequest> _donors;
  @override
  @JsonKey(name: 'donors')
  List<DonorRequest> get donors {
    if (_donors is EqualUnmodifiableListView) return _donors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donors);
  }

  final List<DonatedDistrictRequest> _donatedDistricts;
  @override
  @JsonKey(name: 'donated_districts')
  List<DonatedDistrictRequest> get donatedDistricts {
    if (_donatedDistricts is EqualUnmodifiableListView)
      return _donatedDistricts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donatedDistricts);
  }

  final List<DonatedUpazilaRequest> _donatedUpazilas;
  @override
  @JsonKey(name: 'donated_upazilas')
  List<DonatedUpazilaRequest> get donatedUpazilas {
    if (_donatedUpazilas is EqualUnmodifiableListView) return _donatedUpazilas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donatedUpazilas);
  }

  final List<DonatedUnionRequest> _donatedUnions;
  @override
  @JsonKey(name: 'donated_unions')
  List<DonatedUnionRequest> get donatedUnions {
    if (_donatedUnions is EqualUnmodifiableListView) return _donatedUnions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donatedUnions);
  }

  final List<String> _images;
  @override
  @JsonKey(name: 'images')
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<String> _videos;
  @override
  @JsonKey(name: 'videos')
  List<String> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  String toString() {
    return 'DonationRequest(title: $title, description: $description, disaster: $disaster, donors: $donors, donatedDistricts: $donatedDistricts, donatedUpazilas: $donatedUpazilas, donatedUnions: $donatedUnions, images: $images, videos: $videos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonationRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.disaster, disaster) ||
                other.disaster == disaster) &&
            const DeepCollectionEquality().equals(other._donors, _donors) &&
            const DeepCollectionEquality()
                .equals(other._donatedDistricts, _donatedDistricts) &&
            const DeepCollectionEquality()
                .equals(other._donatedUpazilas, _donatedUpazilas) &&
            const DeepCollectionEquality()
                .equals(other._donatedUnions, _donatedUnions) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      disaster,
      const DeepCollectionEquality().hash(_donors),
      const DeepCollectionEquality().hash(_donatedDistricts),
      const DeepCollectionEquality().hash(_donatedUpazilas),
      const DeepCollectionEquality().hash(_donatedUnions),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_videos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonationRequestImplCopyWith<_$DonationRequestImpl> get copyWith =>
      __$$DonationRequestImplCopyWithImpl<_$DonationRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonationRequestImplToJson(
      this,
    );
  }
}

abstract class _DonationRequest implements DonationRequest {
  const factory _DonationRequest(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'disaster') required final int disaster,
          @JsonKey(name: 'donors') required final List<DonorRequest> donors,
          @JsonKey(name: 'donated_districts')
          required final List<DonatedDistrictRequest> donatedDistricts,
          @JsonKey(name: 'donated_upazilas')
          required final List<DonatedUpazilaRequest> donatedUpazilas,
          @JsonKey(name: 'donated_unions')
          required final List<DonatedUnionRequest> donatedUnions,
          @JsonKey(name: 'images') required final List<String> images,
          @JsonKey(name: 'videos') required final List<String> videos}) =
      _$DonationRequestImpl;

  factory _DonationRequest.fromJson(Map<String, dynamic> json) =
      _$DonationRequestImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'disaster')
  int get disaster;
  @override
  @JsonKey(name: 'donors')
  List<DonorRequest> get donors;
  @override
  @JsonKey(name: 'donated_districts')
  List<DonatedDistrictRequest> get donatedDistricts;
  @override
  @JsonKey(name: 'donated_upazilas')
  List<DonatedUpazilaRequest> get donatedUpazilas;
  @override
  @JsonKey(name: 'donated_unions')
  List<DonatedUnionRequest> get donatedUnions;
  @override
  @JsonKey(name: 'images')
  List<String> get images;
  @override
  @JsonKey(name: 'videos')
  List<String> get videos;
  @override
  @JsonKey(ignore: true)
  _$$DonationRequestImplCopyWith<_$DonationRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
