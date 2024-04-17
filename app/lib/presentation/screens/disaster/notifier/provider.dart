import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/presentation/screens/disaster/notifier/disaster_list_notifier.dart';
import 'package:relief_tracker/presentation/screens/disaster/state/disaster_list_ui_state.dart';

typedef DisasterNotifierProvider = AutoDisposeStateNotifierProvider<
    DisasterListNotifier, DisasterListUiState>;

final DisasterNotifierProvider disasterListNotifierProvider =
    AutoDisposeStateNotifierProvider((ref) => DisasterListNotifier());
