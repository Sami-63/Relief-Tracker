import 'package:relief_tracker/data/datasource/remote/model/response/location/district_details_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/district_response.dart';
import 'package:relief_tracker/data/mapper/location/division_mapper.dart';
import 'package:relief_tracker/data/mapper/location/upazila_mapper.dart';
import 'package:relief_tracker/domain/model/location/district.dart';

extension DistrictResponseMapper on DistrictResponse {
  District toDistrict() {
    return District(
      id: id,
      name: name,
      banglaName: banglaName,
      latitude: latitude,
      longitude: longitude,
      division: division.toDivision(),
    );
  }
}

extension DistrictDetailsResponseMapper on DistrictDetailsResponse {
  DistrictDetails toDistrictDetails() {
    return DistrictDetails(
      id: id,
      name: name,
      banglaName: banglaName,
      latitude: latitude,
      longitude: longitude,
      upazilas: upazilas.map((e) => e.toUpazila()).toList(),
    );
  }
}
