import 'package:relief_tracker/data/datasource/remote/model/response/disaster/affected_upazila_response.dart';
import 'package:relief_tracker/data/mapper/location/upazila_mapper.dart';
import 'package:relief_tracker/domain/model/disaster/affected_location.dart';

extension AffectedUpazilaMapper on AffectedUpazilaResponse {
  AffectedUpazila toAffectedUpazila() {
    return AffectedUpazila(
      affectedPeople: affectedPeople,
      upazila: upazila.toUpazila(),
    );
  }
}
