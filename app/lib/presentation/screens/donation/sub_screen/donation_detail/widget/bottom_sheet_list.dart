import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/presentation/route_manager/route_manager.dart';
import 'package:relief_tracker/presentation/screens/donation/notifier/donation_list_notifier.dart';
import 'package:relief_tracker/presentation/screens/donation/notifier/provider.dart';

class BottomSheetLocationList extends ConsumerStatefulWidget {
  final bool shouldPop;
  final int? districtId;
  final int? upazilaId;
  final int? unionId;

  const BottomSheetLocationList({
    super.key,
    this.shouldPop = true,
    this.districtId,
    this.upazilaId,
    this.unionId,
  });

  @override
  ConsumerState<BottomSheetLocationList> createState() =>
      _BottomSheetLocationListState();
}

class _BottomSheetLocationListState
    extends ConsumerState<BottomSheetLocationList> {
  late DonationNotifierArgs args;

  @override
  void initState() {
    super.initState();

    args = DonationNotifierArgs(
      myDonation: false,
      districtId: widget.districtId,
      upazilaId: widget.upazilaId,
      unionId: widget.unionId,
    );
  }

  @override
  Widget build(BuildContext context) {
    final uiState = ref.watch(donationListNotifierProvider(args));

    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Donations',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              uiState.when(
                loading: () => const CircularProgressIndicator(),
                success: (data) => ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final donation = data[index];
                    return InkWell(
                      onTap: () {
                        if (widget.shouldPop) {
                          Navigator.of(context).pop();
                          RouteManager.of(context).pop();
                        }

                        RouteManager.of(context).goToDonationDetailsScreen(
                          id: donation.id,
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: const Offset(1, 1),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(donation.title,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                                const SizedBox(height: 8),
                                Text(
                                    'Donated by: ${donation.createdBy.firstName} ${donation.createdBy.lastName}'),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 12,
                                  ),
                                  child:
                                      Icon(Icons.arrow_forward_ios, size: 18),
                                ),
                                Text(
                                  getFormattedTime(donation.createdAt),
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                ),
                error: (error) => Text('Error: $error'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String getFormattedTime(String createdAt) {
    final dateTime = DateTime.parse(createdAt);
    final formattedTime = "${dateTime.day}/${dateTime.month}/${dateTime.year}";
    return formattedTime;
  }
}
