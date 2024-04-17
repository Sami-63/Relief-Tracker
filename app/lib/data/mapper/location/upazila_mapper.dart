import 'package:relief_tracker/data/datasource/remote/model/response/location/upazila_details_response.dart';
import 'package:relief_tracker/data/datasource/remote/model/response/location/upazila_response.dart';
import 'package:relief_tracker/data/mapper/location/district_mapper.dart';
import 'package:relief_tracker/data/mapper/location/union_mapper.dart';
import 'package:relief_tracker/domain/model/location/upazila.dart';

extension UpazilaMapper on UpazilaResponse {
  Upazila toUpazila() {
    return Upazila(
      id: id,
      name: name,
      banglaName: banglaName,
      latitude: latitude,
      longitude: longitude,
      district: district.toDistrict(),
    );
  }
}

extension UpazilaDetailsMapper on UpazilaDetailsResponse {
  UpazilaDetails toUpazilaDetails() {
    return UpazilaDetails(
      id: id,
      name: name,
      banglaName: banglaName,
      latitude: latitude,
      longitude: longitude,
      unions: unions.map((e) => e.toUnion()).toList(),
    );
  }
}
