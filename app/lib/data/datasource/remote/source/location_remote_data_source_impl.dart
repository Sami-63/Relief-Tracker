import 'package:relief_tracker/data/datasource/remote/api/location_api.dart';
import 'package:relief_tracker/data/mapper/location/district_mapper.dart';
import 'package:relief_tracker/data/mapper/location/division_mapper.dart';
import 'package:relief_tracker/data/mapper/location/union_mapper.dart';
import 'package:relief_tracker/data/mapper/location/upazila_mapper.dart';
import 'package:relief_tracker/data/mapper/paginated_data_mapper.dart';
import 'package:relief_tracker/data/repository/source/remote/location_remote_data_source.dart';
import 'package:relief_tracker/domain/model/location/district.dart';
import 'package:relief_tracker/domain/model/location/division.dart';
import 'package:relief_tracker/domain/model/location/union.dart';
import 'package:relief_tracker/domain/model/location/upazila.dart';
import 'package:relief_tracker/domain/model/paginated_data.dart';
import 'package:relief_tracker/domain/model/query_params.dart';

class LocationRemoteDataSourceImpl implements LocationRemoteDataSource {
  final LocationApi _locationApi;

  LocationRemoteDataSourceImpl({required LocationApi locationApi})
      : _locationApi = locationApi;

  @override
  Future<PaginatedData<District>> getDistricts({
    required List<QueryParam> queryParams,
  }) async {
    final response = await _locationApi.getDistricts(
      queryParams: queryParams,
    );
    return response.toPaginatedData((district) => district.toDistrict());
  }

  @override
  Future<PaginatedData<Union>> getUnions({
    required List<QueryParam> queryParams,
  }) async {
    final response = await _locationApi.getUnions(
      queryParams: queryParams,
    );
    return response.toPaginatedData((union) => union.toUnion());
  }

  @override
  Future<PaginatedData<Upazila>> getUpazilas({
    required List<QueryParam> queryParams,
  }) async {
    final response = await _locationApi.getUpazilas(
      queryParams: queryParams,
    );
    return response.toPaginatedData((upazila) => upazila.toUpazila());
  }

  @override
  Future<PaginatedData<Division>> getDivisions(
      {required List<QueryParam> queryParams}) async {
    final response = await _locationApi.getDivisions(queryParams: queryParams);

    return response.toPaginatedData((division) => division.toDivision());
  }

  @override
  Future<DivisionDetails> getDivisionDetails({required int divisionId}) {
    final response = _locationApi.getDivisionDetails(divisionId: divisionId);

    return response.then((value) => value.toDivisionDetails());
  }

  @override
  Future<DistrictDetails> getDistrictDetails({required int districtId}) {
    final response = _locationApi.getDistrictDetails(districtId: districtId);

    return response.then((value) => value.toDistrictDetails());
  }

  @override
  Future<UpazilaDetails> getUpazilaDetails({required int upazilaId}) {
    final response = _locationApi.getUpazilaDetails(upazilaId: upazilaId);

    return response.then((value) => value.toUpazilaDetails());
  }
}
