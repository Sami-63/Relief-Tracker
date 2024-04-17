import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/domain/model/location/district.dart';
import 'package:relief_tracker/domain/model/location/union.dart';
import 'package:relief_tracker/domain/model/location/upazila.dart';
import 'package:relief_tracker/domain/model/query_params.dart';
import 'package:relief_tracker/domain/usecase/location/get_districts_use_case.dart';
import 'package:relief_tracker/domain/usecase/location/get_unions_use_case.dart';
import 'package:relief_tracker/domain/usecase/location/get_upazilas_use_case.dart';
import 'package:relief_tracker/injection_container.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_form/state/location_ui_state.dart';

typedef LocationNotifierProvider
    = AutoDisposeStateNotifierProvider<LocationFetchNotifier, LocationUiState>;

final LocationNotifierProvider locationFetchNotifierProvider =
    AutoDisposeStateNotifierProvider((ref) => LocationFetchNotifier());

class LocationFetchNotifier extends StateNotifier<LocationUiState> {
  LocationFetchNotifier() : super(const LocationUiState.loading()) {
    fetchLocations();
  }

  final List<District> _districts = [];
  final List<Upazila> _upazilas = [];
  final List<Union> _unions = [];

  String _districtSearch = '';
  String _upazilaSearch = '';
  String _unionSearch = '';

  List<District> get districts => _districts;

  List<Upazila> get upazilas => _upazilas;

  List<Union> get unions => _unions;

  Future<void> updateDistrictSearch(String value) async {
    _districtSearch = value;
    await fetchDistricts();
  }

  Future<void> updateUpazilaSearch(String value) async {
    _upazilaSearch = value;
    await fetchUpazilas();
  }

  Future<void> updateUnionSearch(String value) async {
    _unionSearch = value;
    await fetchUnions();
  }

  Future<void> fetchLocations() async {
    fetchDistricts();
    fetchUpazilas();
    fetchUnions();
  }

  Future<void> fetchDistricts() async {
    state = const LocationUiState.loading();

    final districtUsecase = getIt.get<GetDistrictsUseCase>();

    final result = await districtUsecase(queryParams: [
      QueryParam(
        key: 'name',
        value: _districtSearch,
      ),
    ]);

    state = result.when(
      success: (districts) {
        _districts.clear();
        _districts.addAll(districts);

        return LocationUiState.success(
          districts: _districts,
          upazilas: _upazilas,
          unions: _unions,
        );
      },
      failure: (message) => LocationUiState.error(message.toString()),
    );
  }

  Future<void> fetchUpazilas() async {
    state = const LocationUiState.loading();

    final upazilaUsecase = getIt.get<GetUpazilasUseCase>();

    final result = await upazilaUsecase(queryParams: [
      QueryParam(
        key: 'name',
        value: _upazilaSearch,
      ),
    ]);

    state = result.when(
      success: (upazilas) {
        _upazilas.clear();
        _upazilas.addAll(upazilas);

        return LocationUiState.success(
          districts: _districts,
          upazilas: _upazilas,
          unions: _unions,
        );
      },
      failure: (message) => LocationUiState.error(message.toString()),
    );
  }

  Future<void> fetchUnions() async {
    state = const LocationUiState.loading();

    final unionUsecase = getIt.get<GetUnionsUseCase>();

    final result = await unionUsecase(queryParams: [
      QueryParam(
        key: 'name',
        value: _unionSearch,
      ),
    ]);

    state = result.when(
      success: (unions) {
        _unions.clear();
        _unions.addAll(unions);

        return LocationUiState.success(
          districts: _districts,
          upazilas: _upazilas,
          unions: _unions,
        );
      },
      failure: (message) => LocationUiState.error(message.toString()),
    );
  }
}
