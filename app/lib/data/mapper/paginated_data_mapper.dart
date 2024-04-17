import 'package:relief_tracker/data/datasource/remote/model/response/common/paginated_data_response.dart';
import 'package:relief_tracker/domain/model/paginated_data.dart';

extension PaginatedDataResponseMapper<T> on PaginatedDataResponse<T> {
  PaginatedData<R> toPaginatedData<R>(R Function(T) mapper) {
    final mappedResults = results.map((item) => mapper(item)).toList();

    return PaginatedData<R>(
      count: count,
      next: next,
      previous: previous,
      results: mappedResults,
    );
  }
}
