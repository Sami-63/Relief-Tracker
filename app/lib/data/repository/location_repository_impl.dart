import 'package:relief_tracker/data/repository/source/remote/location_remote_data_source.dart';
import 'package:relief_tracker/domain/model/location/district.dart';
import 'package:relief_tracker/domain/model/location/division.dart';
import 'package:relief_tracker/domain/model/location/union.dart';
import 'package:relief_tracker/domain/model/location/upazila.dart';
import 'package:relief_tracker/domain/model/query_params.dart';
import 'package:relief_tracker/domain/repository/location_repository.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationRemoteDataSource _locationDataSource;

  LocationRepositoryImpl({required LocationRemoteDataSource locationDataSource})
      : _locationDataSource = locationDataSource;

  @override
  Future<List<District>> getDistricts({
    required List<QueryParam> queryParams,
  }) async {
    final result =
        await _locationDataSource.getDistricts(queryParams: queryParams);
    return result.results;
  }

  @override
  Future<List<Union>> getUnions({
    required List<QueryParam> queryParams,
  }) async {
    final result =
        await _locationDataSource.getUnions(queryParams: queryParams);
    return result.results;
  }

  @override
  Future<List<Upazila>> getUpazilas({
    required List<QueryParam> queryParams,
  }) async {
    final result =
        await _locationDataSource.getUpazilas(queryParams: queryParams);
    return result.results;
  }

  @override
  Future<List<Division>> getDivisions(
      {required List<QueryParam> queryParams}) async {
    final result =
        await _locationDataSource.getDivisions(queryParams: queryParams);
    return result.results;
  }

  @override
  Future<DivisionDetails> getDivisionDetails({required int divisionId}) {
    return _locationDataSource.getDivisionDetails(divisionId: divisionId);
  }

  @override
  Future<DistrictDetails> getDistrictDetails({required int districtId}) {
    return _locationDataSource.getDistrictDetails(districtId: districtId);
  }

  @override
  Future<UpazilaDetails> getUpazilaDetails({required int upazilaId}) {
    return _locationDataSource.getUpazilaDetails(upazilaId: upazilaId);
  }
}
