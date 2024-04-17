import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/domain/model/donation/donation.dart';
import 'package:relief_tracker/domain/model/paginated_data.dart';
import 'package:relief_tracker/domain/model/query_params.dart';
import 'package:relief_tracker/domain/usecase/donation/get_donations_use_case.dart';
import 'package:relief_tracker/injection_container.dart';
import 'package:relief_tracker/presentation/screens/donation/state/donation_list_ui_state.dart';

class DonationNotifierArgs {
  final bool myDonation;
  final int? districtId;
  final int? upazilaId;
  final int? unionId;

  DonationNotifierArgs({
    required this.myDonation,
    this.districtId,
    this.upazilaId,
    this.unionId,
  });
}

class DonationListNotifier extends StateNotifier<DonationListUiState> {
  DonationListNotifier(DonationNotifierArgs args)
      : super(const DonationListUiState.loading()) {
    _myDonation = args.myDonation;
    districtId = args.districtId;
    upazilaId = args.upazilaId;
    unionId = args.unionId;

    fetchDonations();
  }

  final List<Donation> _donations = [];
  bool _hasMore = true;
  bool _isLoading = false;
  final int _pageSize = 10;
  int _pageNumber = 1;
  bool _myDonation = false;

  int? districtId;
  int? upazilaId;
  int? unionId;

  void setLocations() {
    _hasMore = true;
    _isLoading = false;
    _pageNumber = 1;
    _myDonation = false;
    fetchDonations();
  }

  Future<void> fetchDonations() async {
    if (!_hasMore || _isLoading) {
      return;
    }

    _isLoading = true;

    final usecase = getIt.get<GetDonationsUseCase>();
    final result = await usecase(
      myDonations: _myDonation,
      queryParams: [
        QueryParam(key: 'page', value: _pageNumber),
        QueryParam(key: 'page_size', value: _pageSize),
        if (districtId != null) QueryParam(key: 'district', value: districtId),
        if (upazilaId != null) QueryParam(key: 'upazila', value: upazilaId),
        if (unionId != null) QueryParam(key: 'union', value: unionId),
      ],
    );

    state = result.when(
      success: (data) => _handleSuccess(data),
      failure: (failure) => _handleFailure(failure.message),
    );

    _isLoading = false;
  }

  DonationListUiState _handleSuccess(PaginatedData<Donation> data) {
    _hasMore = data.next != null;
    _pageNumber++;
    _donations.addAll(data.results);
    return DonationListUiState.success(donations: _donations);
  }

  DonationListUiState _handleFailure(String message) {
    return DonationListUiState.error(message);
  }
}
