// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonationResponse _$DonationResponseFromJson(Map<String, dynamic> json) {
  return _DonationResponse.fromJson(json);
}

/// @nodoc
mixin _$DonationResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  String get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  DonorResponse get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'disaster')
  int get disaster => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'videos')
  List<String> get videos => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'modified_at')
  String get modifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'donors')
  List<DonorResponse> get donors => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_districts')
  List<DonatedDistrictResponse> get donatedDistricts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_upazilas')
  List<DonatedUpazilaResponse> get donatedUpazilas =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_unions')
  List<DonatedUnionResponse> get donatedUnions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonationResponseCopyWith<DonationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonationResponseCopyWith<$Res> {
  factory $DonationResponseCopyWith(
          DonationResponse value, $Res Function(DonationResponse) then) =
      _$DonationResponseCopyWithImpl<$Res, DonationResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'created_by') DonorResponse createdBy,
      @JsonKey(name: 'disaster') int disaster,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'videos') List<String> videos,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'modified_at') String modifiedAt,
      @JsonKey(name: 'donors') List<DonorResponse> donors,
      @JsonKey(name: 'donated_districts')
      List<DonatedDistrictResponse> donatedDistricts,
      @JsonKey(name: 'donated_upazilas')
      List<DonatedUpazilaResponse> donatedUpazilas,
      @JsonKey(name: 'donated_unions')
      List<DonatedUnionResponse> donatedUnions});

  $DonorResponseCopyWith<$Res> get createdBy;
}

/// @nodoc
class _$DonationResponseCopyWithImpl<$Res, $Val extends DonationResponse>
    implements $DonationResponseCopyWith<$Res> {
  _$DonationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? state = null,
    Object? createdBy = null,
    Object? disaster = null,
    Object? images = null,
    Object? videos = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
    Object? donors = null,
    Object? donatedDistricts = null,
    Object? donatedUpazilas = null,
    Object? donatedUnions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as DonorResponse,
      disaster: null == disaster
          ? _value.disaster
          : disaster // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as String,
      donors: null == donors
          ? _value.donors
          : donors // ignore: cast_nullable_to_non_nullable
              as List<DonorResponse>,
      donatedDistricts: null == donatedDistricts
          ? _value.donatedDistricts
          : donatedDistricts // ignore: cast_nullable_to_non_nullable
              as List<DonatedDistrictResponse>,
      donatedUpazilas: null == donatedUpazilas
          ? _value.donatedUpazilas
          : donatedUpazilas // ignore: cast_nullable_to_non_nullable
              as List<DonatedUpazilaResponse>,
      donatedUnions: null == donatedUnions
          ? _value.donatedUnions
          : donatedUnions // ignore: cast_nullable_to_non_nullable
              as List<DonatedUnionResponse>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DonorResponseCopyWith<$Res> get createdBy {
    return $DonorResponseCopyWith<$Res>(_value.createdBy, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DonationResponseImplCopyWith<$Res>
    implements $DonationResponseCopyWith<$Res> {
  factory _$$DonationResponseImplCopyWith(_$DonationResponseImpl value,
          $Res Function(_$DonationResponseImpl) then) =
      __$$DonationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'created_by') DonorResponse createdBy,
      @JsonKey(name: 'disaster') int disaster,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'videos') List<String> videos,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'modified_at') String modifiedAt,
      @JsonKey(name: 'donors') List<DonorResponse> donors,
      @JsonKey(name: 'donated_districts')
      List<DonatedDistrictResponse> donatedDistricts,
      @JsonKey(name: 'donated_upazilas')
      List<DonatedUpazilaResponse> donatedUpazilas,
      @JsonKey(name: 'donated_unions')
      List<DonatedUnionResponse> donatedUnions});

  @override
  $DonorResponseCopyWith<$Res> get createdBy;
}

/// @nodoc
class __$$DonationResponseImplCopyWithImpl<$Res>
    extends _$DonationResponseCopyWithImpl<$Res, _$DonationResponseImpl>
    implements _$$DonationResponseImplCopyWith<$Res> {
  __$$DonationResponseImplCopyWithImpl(_$DonationResponseImpl _value,
      $Res Function(_$DonationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? state = null,
    Object? createdBy = null,
    Object? disaster = null,
    Object? images = null,
    Object? videos = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
    Object? donors = null,
    Object? donatedDistricts = null,
    Object? donatedUpazilas = null,
    Object? donatedUnions = null,
  }) {
    return _then(_$DonationResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as DonorResponse,
      disaster: null == disaster
          ? _value.disaster
          : disaster // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as String,
      donors: null == donors
          ? _value._donors
          : donors // ignore: cast_nullable_to_non_nullable
              as List<DonorResponse>,
      donatedDistricts: null == donatedDistricts
          ? _value._donatedDistricts
          : donatedDistricts // ignore: cast_nullable_to_non_nullable
              as List<DonatedDistrictResponse>,
      donatedUpazilas: null == donatedUpazilas
          ? _value._donatedUpazilas
          : donatedUpazilas // ignore: cast_nullable_to_non_nullable
              as List<DonatedUpazilaResponse>,
      donatedUnions: null == donatedUnions
          ? _value._donatedUnions
          : donatedUnions // ignore: cast_nullable_to_non_nullable
              as List<DonatedUnionResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonationResponseImpl implements _DonationResponse {
  const _$DonationResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'state') required this.state,
      @JsonKey(name: 'created_by') required this.createdBy,
      @JsonKey(name: 'disaster') required this.disaster,
      @JsonKey(name: 'images') required final List<String> images,
      @JsonKey(name: 'videos') required final List<String> videos,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'modified_at') required this.modifiedAt,
      @JsonKey(name: 'donors') required final List<DonorResponse> donors,
      @JsonKey(name: 'donated_districts')
      required final List<DonatedDistrictResponse> donatedDistricts,
      @JsonKey(name: 'donated_upazilas')
      required final List<DonatedUpazilaResponse> donatedUpazilas,
      @JsonKey(name: 'donated_unions')
      required final List<DonatedUnionResponse> donatedUnions})
      : _images = images,
        _videos = videos,
        _donors = donors,
        _donatedDistricts = donatedDistricts,
        _donatedUpazilas = donatedUpazilas,
        _donatedUnions = donatedUnions;

  factory _$DonationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonationResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'state')
  final String state;
  @override
  @JsonKey(name: 'created_by')
  final DonorResponse createdBy;
  @override
  @JsonKey(name: 'disaster')
  final int disaster;
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
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'modified_at')
  final String modifiedAt;
  final List<DonorResponse> _donors;
  @override
  @JsonKey(name: 'donors')
  List<DonorResponse> get donors {
    if (_donors is EqualUnmodifiableListView) return _donors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donors);
  }

  final List<DonatedDistrictResponse> _donatedDistricts;
  @override
  @JsonKey(name: 'donated_districts')
  List<DonatedDistrictResponse> get donatedDistricts {
    if (_donatedDistricts is EqualUnmodifiableListView)
      return _donatedDistricts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donatedDistricts);
  }

  final List<DonatedUpazilaResponse> _donatedUpazilas;
  @override
  @JsonKey(name: 'donated_upazilas')
  List<DonatedUpazilaResponse> get donatedUpazilas {
    if (_donatedUpazilas is EqualUnmodifiableListView) return _donatedUpazilas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donatedUpazilas);
  }

  final List<DonatedUnionResponse> _donatedUnions;
  @override
  @JsonKey(name: 'donated_unions')
  List<DonatedUnionResponse> get donatedUnions {
    if (_donatedUnions is EqualUnmodifiableListView) return _donatedUnions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donatedUnions);
  }

  @override
  String toString() {
    return 'DonationResponse(id: $id, title: $title, description: $description, state: $state, createdBy: $createdBy, disaster: $disaster, images: $images, videos: $videos, createdAt: $createdAt, modifiedAt: $modifiedAt, donors: $donors, donatedDistricts: $donatedDistricts, donatedUpazilas: $donatedUpazilas, donatedUnions: $donatedUnions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonationResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.disaster, disaster) ||
                other.disaster == disaster) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt) &&
            const DeepCollectionEquality().equals(other._donors, _donors) &&
            const DeepCollectionEquality()
                .equals(other._donatedDistricts, _donatedDistricts) &&
            const DeepCollectionEquality()
                .equals(other._donatedUpazilas, _donatedUpazilas) &&
            const DeepCollectionEquality()
                .equals(other._donatedUnions, _donatedUnions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      state,
      createdBy,
      disaster,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_videos),
      createdAt,
      modifiedAt,
      const DeepCollectionEquality().hash(_donors),
      const DeepCollectionEquality().hash(_donatedDistricts),
      const DeepCollectionEquality().hash(_donatedUpazilas),
      const DeepCollectionEquality().hash(_donatedUnions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonationResponseImplCopyWith<_$DonationResponseImpl> get copyWith =>
      __$$DonationResponseImplCopyWithImpl<_$DonationResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonationResponseImplToJson(
      this,
    );
  }
}

abstract class _DonationResponse implements DonationResponse {
  const factory _DonationResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'state') required final String state,
          @JsonKey(name: 'created_by') required final DonorResponse createdBy,
          @JsonKey(name: 'disaster') required final int disaster,
          @JsonKey(name: 'images') required final List<String> images,
          @JsonKey(name: 'videos') required final List<String> videos,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'modified_at') required final String modifiedAt,
          @JsonKey(name: 'donors') required final List<DonorResponse> donors,
          @JsonKey(name: 'donated_districts')
          required final List<DonatedDistrictResponse> donatedDistricts,
          @JsonKey(name: 'donated_upazilas')
          required final List<DonatedUpazilaResponse> donatedUpazilas,
          @JsonKey(name: 'donated_unions')
          required final List<DonatedUnionResponse> donatedUnions}) =
      _$DonationResponseImpl;

  factory _DonationResponse.fromJson(Map<String, dynamic> json) =
      _$DonationResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'state')
  String get state;
  @override
  @JsonKey(name: 'created_by')
  DonorResponse get createdBy;
  @override
  @JsonKey(name: 'disaster')
  int get disaster;
  @override
  @JsonKey(name: 'images')
  List<String> get images;
  @override
  @JsonKey(name: 'videos')
  List<String> get videos;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'modified_at')
  String get modifiedAt;
  @override
  @JsonKey(name: 'donors')
  List<DonorResponse> get donors;
  @override
  @JsonKey(name: 'donated_districts')
  List<DonatedDistrictResponse> get donatedDistricts;
  @override
  @JsonKey(name: 'donated_upazilas')
  List<DonatedUpazilaResponse> get donatedUpazilas;
  @override
  @JsonKey(name: 'donated_unions')
  List<DonatedUnionResponse> get donatedUnions;
  @override
  @JsonKey(ignore: true)
  _$$DonationResponseImplCopyWith<_$DonationResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
