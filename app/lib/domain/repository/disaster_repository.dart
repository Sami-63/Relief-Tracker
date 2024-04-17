import 'package:relief_tracker/domain/model/disaster/affected_location.dart';
import 'package:relief_tracker/domain/model/disaster/disaster.dart';
import 'package:relief_tracker/domain/model/query_params.dart';

abstract class DisasterRepository {
  Future<void> createDisaster({
    required String title,
    required String description,
    required String startTime,
    required String? endTime,
    required List<AffectedDistrict> affectedDistricts,
    required List<AffectedUpazila> affectedUpazilas,
    required List<AffectedUnion> affectedUnions,
    required List<String> images,
  });

  Future<List<Disaster>> fetchDisasters({
    required List<QueryParam> queryParams,
  });

  Future<Disaster> fetchDisaster({
    required int id,
  });

  Future<List<String>> uploadImages({
    required List<String> imagePaths,
  });
}
