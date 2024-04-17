import 'package:relief_tracker/data/datasource/remote/api/disaster_api.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/disaster/affected_district_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/disaster/affected_union_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/disaster/affected_upazila_request.dart';
import 'package:relief_tracker/data/datasource/remote/model/request/disaster/disaster_request.dart';
import 'package:relief_tracker/data/mapper/disaster/disaster_mapper.dart';
import 'package:relief_tracker/data/repository/source/remote/disaster_remote_data_source.dart';
import 'package:relief_tracker/domain/model/disaster/affected_location.dart';
import 'package:relief_tracker/domain/model/disaster/disaster.dart';
import 'package:relief_tracker/domain/model/query_params.dart';

class DisasterRemoteDataSourceImpl implements DisasterRemoteDataSource {
  final DisasterApi _disasterApi;

  DisasterRemoteDataSourceImpl({
    required DisasterApi disasterApi,
  }) : _disasterApi = disasterApi;

  @override
  Future<void> createDisaster({
    required String title,
    required String description,
    required String startTime,
    required String? endTime,
    required List<AffectedDistrict> affectedDistricts,
    required List<AffectedUpazila> affectedUpazilas,
    required List<AffectedUnion> affectedUnions,
    required List<String> images,
  }) {
    final List<AffectedDistrictRequest> affectedDistrictsRequest =
        affectedDistricts
            .map((affectedDistrict) => AffectedDistrictRequest(
                  district: affectedDistrict.district.id,
                  affectedPeople: affectedDistrict.affectedPeople,
                ))
            .toList();

    final List<AffectedUpazilaRequest> affectedUpazilasRequest =
        affectedUpazilas
            .map((affectedUpazila) => AffectedUpazilaRequest(
                  upazila: affectedUpazila.upazila.id,
                  affectedPeople: affectedUpazila.affectedPeople,
                ))
            .toList();

    final List<AffectedUnionRequest> affectedUnionsRequest = affectedUnions
        .map((affectedUnion) => AffectedUnionRequest(
              union: affectedUnion.union.id,
              affectedPeople: affectedUnion.affectedPeople,
            ))
        .toList();

    final requestBody = DisasterRequest(
      title: title,
      description: description,
      startTime: startTime,
      endTime: endTime,
      affectedDistricts: affectedDistrictsRequest,
      affectedUpazilas: affectedUpazilasRequest,
      affectedUnions: affectedUnionsRequest,
    );

    return _disasterApi.createDisaster(
      title: requestBody.title,
      description: requestBody.description,
      startTime: requestBody.startTime,
      endTime: requestBody.endTime,
      affectedDistricts: requestBody.affectedDistricts,
      affectedUpazilas: requestBody.affectedUpazilas,
      affectedUnions: requestBody.affectedUnions,
      images: images,
    );
  }

  @override
  Future<List<Disaster>> fetchDisasters({
    required List<QueryParam> queryParams,
  }) async {
    final response = await _disasterApi.fetchDisasters(
      queryParams: queryParams,
    );
    return response.results.map((disaster) => disaster.toDisaster()).toList();
  }

  @override
  Future<Disaster> fetchDisaster({required int id}) async {
    final response = await _disasterApi.fetchDisaster(id: id);

    return response.toDisaster();
  }

  @override
  Future<List<String>> uploadImages({required List<String> imagePaths}) {
    return _disasterApi.uploadImages(imagePaths: imagePaths);
  }
}
