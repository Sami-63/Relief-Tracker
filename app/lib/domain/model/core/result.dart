import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/domain/model/core/failure.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const Result._();

  const factory Result.success(T value) = SuccessResult;

  const factory Result.failure(Failure failure) = FailureResult;
}
