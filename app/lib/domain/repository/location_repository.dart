import 'package:relief_tracker/domain/model/location/district.dart';
import 'package:relief_tracker/domain/model/location/division.dart';
import 'package:relief_tracker/domain/model/location/union.dart';
import 'package:relief_tracker/domain/model/location/upazila.dart';
import 'package:relief_tracker/domain/model/query_params.dart';

abstract class LocationRepository {
  Future<List<District>> getDistricts({required List<QueryParam> queryParams});

  Future<List<Upazila>> getUpazilas({required List<QueryParam> queryParams});

  Future<List<Union>> getUnions({required List<QueryParam> queryParams});

  Future<List<Division>> getDivisions({required List<QueryParam> queryParams});

  Future<DivisionDetails> getDivisionDetails({required int divisionId});

  Future<DistrictDetails> getDistrictDetails({required int districtId});

  Future<UpazilaDetails> getUpazilaDetails({required int upazilaId});
}
