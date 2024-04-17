import 'package:relief_tracker/domain/model/location/district.dart';
import 'package:relief_tracker/domain/model/location/division.dart';
import 'package:relief_tracker/domain/model/location/union.dart';
import 'package:relief_tracker/domain/model/location/upazila.dart';
import 'package:relief_tracker/domain/model/paginated_data.dart';
import 'package:relief_tracker/domain/model/query_params.dart';

abstract class LocationRemoteDataSource {
  Future<PaginatedData<District>> getDistricts({
    required List<QueryParam> queryParams,
  });

  Future<PaginatedData<Upazila>> getUpazilas({
    required List<QueryParam> queryParams,
  });

  Future<PaginatedData<Union>> getUnions({
    required List<QueryParam> queryParams,
  });

  Future<PaginatedData<Division>> getDivisions({
    required List<QueryParam> queryParams,
  });

  Future<DivisionDetails> getDivisionDetails({
    required int divisionId,
  });

  Future<DistrictDetails> getDistrictDetails({
    required int districtId,
  });

  Future<UpazilaDetails> getUpazilaDetails({
    required int upazilaId,
  });
}
