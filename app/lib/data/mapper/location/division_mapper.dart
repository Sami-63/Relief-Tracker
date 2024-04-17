import 'package:relief_tracker/data/datasource/remote/model/response/location/division_details_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/division_response.dart';
import 'package:relief_tracker/data/mapper/location/district_mapper.dart';
import 'package:relief_tracker/domain/model/location/division.dart';

extension DivisionMapper on DivisionResponse {
  Division toDivision() {
    return Division(
      id: id,
      name: name,
      banglaName: banglaName,
    );
  }
}

extension DivisionDetailsMapper on DivisionDetailsResponse {
  DivisionDetails toDivisionDetails() {
    return DivisionDetails(
      id: id,
      name: name,
      banglaName: banglaName,
      districts: districts.map((e) => e.toDistrict()).toList(),
    );
  }
}