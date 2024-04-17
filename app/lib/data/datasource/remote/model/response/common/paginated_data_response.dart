import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_data_response.freezed.dart';
part 'paginated_data_response.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginatedDataResponse<T> with _$PaginatedDataResponse<T> {
  const factory PaginatedDataResponse({
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'next') required String? next,
    @JsonKey(name: 'previous') required String? previous,
    @JsonKey(name: 'results') required List<T> results,
  }) = _PaginatedDataResponse<T>;

  factory PaginatedDataResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
  ) =>
      _$PaginatedDataResponseFromJson<T>(
        json,
        (p0) => fromJsonT(p0 as Map<String, dynamic>),
      );
}
