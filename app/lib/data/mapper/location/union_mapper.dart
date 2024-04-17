import 'package:relief_tracker/data/datasource/remote/model/response/location/union_response.dart';
import 'package:relief_tracker/data/mapper/location/upazila_mapper.dart';
import 'package:relief_tracker/domain/model/location/union.dart';

extension UnionMapper on UnionResponse {
  Union toUnion() {
    return Union(
      id: id,
      name: name,
      banglaName: banglaName,
      latitude: latitude,
      longitude: longitude,
      upazila: upazila.toUpazila(),
    );
  }
}
