import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/domain/model/disaster/disaster.dart';
import 'package:relief_tracker/domain/model/query_params.dart';
import 'package:relief_tracker/domain/usecase/disaster/get_disasters_use_case.dart';
import 'package:relief_tracker/injection_container.dart';
import 'package:relief_tracker/presentation/screens/disaster/state/disaster_list_ui_state.dart';

class DisasterListNotifier extends StateNotifier<DisasterListUiState> {
  DisasterListNotifier() : super(const DisasterListUiState.loading()) {
    fetchDisasters();
  }

  final List<Disaster> _disasters = [];
  bool _hasMore = true;
  bool _isLoading = false;
  bool _errorState = false;
  final int _pageSize = 10;
  int _pageNumber = 1;

  Future<void> fetchDisasters() async {
    if (!_hasMore || _isLoading) {
      return;
    }

    _isLoading = true;

    final usecase = getIt.get<GetDisastersUseCase>();
    final result = await usecase(
      queryParams: [
        QueryParam(key: 'page', value: _pageNumber),
        QueryParam(key: 'page_size', value: _pageSize),
      ],
    );

    state = result.when(
      success: (data) => _handleSuccess(data),
      failure: (failure) => _handleFailure(failure.message),
    );

    _isLoading = false;
  }

  DisasterListUiState _handleSuccess(List<Disaster> data) {
    if (data.isEmpty) {
      _hasMore = false;
    } else {
      _disasters.addAll(data);
      _pageNumber++;
    }

    _errorState = false;

    return DisasterListUiState.success(disasters: _disasters);
  }

  DisasterListUiState _handleFailure(String message) {
    _errorState = true;

    return DisasterListUiState.error(message);
  }
}
