import 'package:relief_tracker/data/datasource/remote/model/response/disaster/affected_district_response.dart';
import 'package:relief_tracker/data/mapper/location/district_mapper.dart';
import 'package:relief_tracker/domain/model/disaster/affected_location.dart';

extension AffectedDistrictMapper on AffectedDistrictResponse {
  AffectedDistrict toAffectedDistrict() {
    return AffectedDistrict(
      affectedPeople: affectedPeople,
      district: district.toDistrict(),
    );
  }
}
