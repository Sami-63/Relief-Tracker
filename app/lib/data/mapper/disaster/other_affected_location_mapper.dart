import 'package:relief_tracker/data/datasource/remote/model/response/disaster/other_affected_location_response.dart';
import 'package:relief_tracker/domain/model/disaster/affected_location.dart';

extension OtherAffectedLocationMapper on OtherAffectedLocationResponse {
  OtherAffectedLocation toOtherAffectedLocation() {
    return OtherAffectedLocation(
      location: location,
      affectedPeople: affectedPeople,
    );
  }
}
