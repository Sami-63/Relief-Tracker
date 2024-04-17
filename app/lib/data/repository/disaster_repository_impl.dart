import 'package:relief_tracker/data/repository/source/remote/disaster_remote_data_source.dart';
import 'package:relief_tracker/domain/model/disaster/affected_location.dart';
import 'package:relief_tracker/domain/model/disaster/disaster.dart';
import 'package:relief_tracker/domain/model/query_params.dart';
import 'package:relief_tracker/domain/repository/disaster_repository.dart';

class DisasterRepositoryImpl implements DisasterRepository {
  final DisasterRemoteDataSource _disasterRemoteDataSource;

  DisasterRepositoryImpl({
    required DisasterRemoteDataSource disasterRemoteDataSource,
  }) : _disasterRemoteDataSource = disasterRemoteDataSource;

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
    return _disasterRemoteDataSource.createDisaster(
      title: title,
      description: description,
      startTime: startTime,
      endTime: endTime,
      affectedDistricts: affectedDistricts,
      affectedUpazilas: affectedUpazilas,
      affectedUnions: affectedUnions,
      images: images,
    );
  }

  @override
  Future<List<Disaster>> fetchDisasters({
    required List<QueryParam> queryParams,
  }) {
    return _disasterRemoteDataSource.fetchDisasters(queryParams: queryParams);
  }

  @override
  Future<Disaster> fetchDisaster({required int id}) {
    return _disasterRemoteDataSource.fetchDisaster(id: id);
  }

  @override
  Future<List<String>> uploadImages({required List<String> imagePaths}) {
    return _disasterRemoteDataSource.uploadImages(imagePaths: imagePaths);
  }
}
