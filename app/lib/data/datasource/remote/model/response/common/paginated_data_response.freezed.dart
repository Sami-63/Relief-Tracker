// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginatedDataResponse<T> _$PaginatedDataResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginatedDataResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginatedDataResponse<T> {
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  String? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous')
  String? get previous => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<T> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedDataResponseCopyWith<T, PaginatedDataResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedDataResponseCopyWith<T, $Res> {
  factory $PaginatedDataResponseCopyWith(PaginatedDataResponse<T> value,
          $Res Function(PaginatedDataResponse<T>) then) =
      _$PaginatedDataResponseCopyWithImpl<T, $Res, PaginatedDataResponse<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'previous') String? previous,
      @JsonKey(name: 'results') List<T> results});
}

/// @nodoc
class _$PaginatedDataResponseCopyWithImpl<T, $Res,
        $Val extends PaginatedDataResponse<T>>
    implements $PaginatedDataResponseCopyWith<T, $Res> {
  _$PaginatedDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedDataResponseImplCopyWith<T, $Res>
    implements $PaginatedDataResponseCopyWith<T, $Res> {
  factory _$$PaginatedDataResponseImplCopyWith(
          _$PaginatedDataResponseImpl<T> value,
          $Res Function(_$PaginatedDataResponseImpl<T>) then) =
      __$$PaginatedDataResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'previous') String? previous,
      @JsonKey(name: 'results') List<T> results});
}

/// @nodoc
class __$$PaginatedDataResponseImplCopyWithImpl<T, $Res>
    extends _$PaginatedDataResponseCopyWithImpl<T, $Res,
        _$PaginatedDataResponseImpl<T>>
    implements _$$PaginatedDataResponseImplCopyWith<T, $Res> {
  __$$PaginatedDataResponseImplCopyWithImpl(
      _$PaginatedDataResponseImpl<T> _value,
      $Res Function(_$PaginatedDataResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$PaginatedDataResponseImpl<T>(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PaginatedDataResponseImpl<T> implements _PaginatedDataResponse<T> {
  const _$PaginatedDataResponseImpl(
      {@JsonKey(name: 'count') required this.count,
      @JsonKey(name: 'next') required this.next,
      @JsonKey(name: 'previous') required this.previous,
      @JsonKey(name: 'results') required final List<T> results})
      : _results = results;

  factory _$PaginatedDataResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PaginatedDataResponseImplFromJson(json, fromJsonT);

  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'next')
  final String? next;
  @override
  @JsonKey(name: 'previous')
  final String? previous;
  final List<T> _results;
  @override
  @JsonKey(name: 'results')
  List<T> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PaginatedDataResponse<$T>(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedDataResponseImpl<T> &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedDataResponseImplCopyWith<T, _$PaginatedDataResponseImpl<T>>
      get copyWith => __$$PaginatedDataResponseImplCopyWithImpl<T,
          _$PaginatedDataResponseImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PaginatedDataResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _PaginatedDataResponse<T> implements PaginatedDataResponse<T> {
  const factory _PaginatedDataResponse(
          {@JsonKey(name: 'count') required final int count,
          @JsonKey(name: 'next') required final String? next,
          @JsonKey(name: 'previous') required final String? previous,
          @JsonKey(name: 'results') required final List<T> results}) =
      _$PaginatedDataResponseImpl<T>;

  factory _PaginatedDataResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PaginatedDataResponseImpl<T>.fromJson;

  @override
  @JsonKey(name: 'count')
  int get count;
  @override
  @JsonKey(name: 'next')
  String? get next;
  @override
  @JsonKey(name: 'previous')
  String? get previous;
  @override
  @JsonKey(name: 'results')
  List<T> get results;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedDataResponseImplCopyWith<T, _$PaginatedDataResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
