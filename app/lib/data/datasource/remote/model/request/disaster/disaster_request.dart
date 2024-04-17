import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/disaster/affected_district_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/disaster/affected_union_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/disaster/affected_upazila_request.dart';

part 'disaster_request.freezed.dart';
part 'disaster_request.g.dart';

@freezed
class DisasterRequest with _$DisasterRequest {
  const factory DisasterRequest({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String? endTime,
    @JsonKey(name: 'affected_districts')
    required List<AffectedDistrictRequest> affectedDistricts,
    @JsonKey(name: 'affected_upazilas')
    required List<AffectedUpazilaRequest> affectedUpazilas,
    @JsonKey(name: 'affected_unions')
    required List<AffectedUnionRequest> affectedUnions,
  }) = _DisasterRequest;

  factory DisasterRequest.fromJson(Map<String, dynamic> json) =>
      _$DisasterRequestFromJson(json);
}
