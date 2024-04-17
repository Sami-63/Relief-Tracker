import 'package:relief_tracker/data/datasource/remote/model/response/disaster/affected_union_response.dart';
import 'package:relief_tracker/data/mapper/location/union_mapper.dart';
import 'package:relief_tracker/domain/model/disaster/affected_location.dart';

extension AffectedUnionMapper on AffectedUnionResponse {
  AffectedUnion toAffectedUnion() {
    return AffectedUnion(
      affectedPeople: affectedPeople,
      union: union.toUnion(),
    );
  }
}
