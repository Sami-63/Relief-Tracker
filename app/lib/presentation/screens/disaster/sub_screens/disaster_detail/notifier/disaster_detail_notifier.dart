import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/domain/usecase/disaster/get_disaster_details_use_case.dart';
import 'package:relief_tracker/injection_container.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_detail/state/disaster_detail_ui_state.dart';

typedef DisasterDetailNotifierProvider = AutoDisposeStateNotifierProviderFamily<
    DisasterDetailNotifier, DisasterDetailUiState, int>;

final DisasterDetailNotifierProvider disasterDetailNotifierProvider =
    StateNotifierProvider.autoDispose.family(
  (ref, id) => DisasterDetailNotifier(id: id),
);

class DisasterDetailNotifier extends StateNotifier<DisasterDetailUiState> {
  DisasterDetailNotifier({
    required this.id,
  }) : super(const DisasterDetailUiState.loading()) {
    fetchDisaster();
  }

  final int id;

  Future<void> fetchDisaster() async {
    state = const DisasterDetailUiState.loading();

    final usecase = getIt.get<GetDisasterDetailsUseCase>();
    final result = await usecase(id: id);

    state = result.when(
      success: (data) => DisasterDetailUiState.success(disaster: data),
      failure: (error) => DisasterDetailUiState.error(error.toString()),
    );
  }
}
