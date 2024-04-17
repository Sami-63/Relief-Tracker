import 'package:relief_tracker/data/datasource/remote/model/response/disaster/disaster_response.dart';
import 'package:relief_tracker/data/mapper/disaster/affected_district_mapper.dart';
import 'package:relief_tracker/data/mapper/disaster/affected_union_mapper.dart';
import 'package:relief_tracker/data/mapper/disaster/affected_upazila_mapper.dart';
import 'package:relief_tracker/data/mapper/donation/donation.dart';
import 'package:relief_tracker/domain/model/disaster/disaster.dart';

extension DisasterMapper on DisasterResponse {
  Disaster toDisaster() {
    return Disaster(
      id: id,
      title: title,
      description: description,
      startTime: startTime,
      endTime: endTime,
      images: images,
      affectedDistricts:
          affectedDistricts.map((e) => e.toAffectedDistrict()).toList(),
      affectedUpazilas:
          affectedUpazilas.map((e) => e.toAffectedUpazila()).toList(),
      affectedUnions: affectedUnions.map((e) => e.toAffectedUnion()).toList(),
      donations: donations.map((e) => e.toDonation()).toList(),
    );
  }
}
