import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:relief_tracker/domain/model/donation/donation.dart';
import 'package:relief_tracker/presentation/notifier/provider.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_form/widget/custom_button.dart';
import 'package:relief_tracker/presentation/screens/donation/sub_screen/donation_detail/notifier/provider.dart';
import 'package:relief_tracker/presentation/screens/donation/sub_screen/donation_detail/notifier/update_donation_state.dart';

import 'bottom_sheet_list.dart';

class DonationViewSuccessView extends ConsumerStatefulWidget {
  final Donation data;

  const DonationViewSuccessView({
    super.key,
    required this.data,
  });

  @override
  ConsumerState<DonationViewSuccessView> createState() =>
      _DonationViewSuccessViewState();
}

class _DonationViewSuccessViewState
    extends ConsumerState<DonationViewSuccessView> {
  final List<LatLng> donatedLocations = [];
  int districtId = -1;
  int upazilaId = -1;
  int unionId = -1;

  @override
  void initState() {
    super.initState();

    for (final district in widget.data.donatedDistricts) {
      if (district.district.latitude != null &&
          district.district.longitude != null) {
        districtId = district.district.id;
        donatedLocations.add(
          LatLng(district.district.latitude!, district.district.longitude!),
        );
      }
    }

    for (final upazila in widget.data.donatedUpazilas) {
      if (upazila.upazila.latitude != null &&
          upazila.upazila.longitude != null) {
        upazilaId = upazila.upazila.id;
        donatedLocations.add(
          LatLng(upazila.upazila.latitude!, upazila.upazila.longitude!),
        );
      }
    }

    for (final union in widget.data.donatedUnions) {
      if (union.union.latitude != null && union.union.longitude != null) {
        unionId = union.union.id;
        donatedLocations.add(
          LatLng(union.union.latitude!, union.union.longitude!),
        );
      }
    }

    if (donatedLocations.isEmpty) {
      donatedLocations.add(const LatLng(24.905045458950635, 91.86038484471987));
    }
    state = widget.data.state;
  }

  late String state;

  @override
  Widget build(BuildContext context) {
    final updateUiState = ref.watch(updateDonationStateNotifierProvider);
    final notifier = ref.read(updateDonationStateNotifierProvider.notifier);
    final userInfo = ref.read(userInfoNotifierProvider);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: GoogleMap(
                gestureRecognizers: {
                  Factory<OneSequenceGestureRecognizer>(
                      () => EagerGestureRecognizer())
                },
                initialCameraPosition: CameraPosition(
                  target: donatedLocations.first,
                  zoom: 12,
                ),
                markers: {
                  for (final location in donatedLocations)
                    Marker(
                      markerId: MarkerId(location.toString()),
                      position: location,
                      onTap: () {
                        if (districtId == -1 &&
                            upazilaId == -1 &&
                            unionId == -1) {
                          return;
                        }

                        showBottomSheet(
                          context: context,
                          backgroundColor: Colors.white,
                          elevation: 10,
                          builder: (context) {
                            return BottomSheetLocationList(
                              districtId: districtId,
                              upazilaId: upazilaId,
                              unionId: unionId,
                            );
                          },
                        );
                      },
                    ),
                },
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            widget.data.title,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Reported at : ${getFormattedTime(widget.data.createdAt)}',
            style: const TextStyle(fontSize: 12),
          ),
          Text(
            'Last reported at : ${getFormattedTime(widget.data.modifiedAt)}',
            style: const TextStyle(fontSize: 12),
          ),
          Text(
            'Reported by: ${widget.data.createdBy.firstName} ${widget.data.createdBy.lastName}',
            style: const TextStyle(fontSize: 12),
          ),
          const Divider(),
          ...userInfo.when(
            anonymous: () => [const SizedBox.shrink()],
            loading: () => [const SizedBox.shrink()],
            success: (_) {
              if (_.type == 'admin' || _.type == 'moderator') {
                return [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton<String>(
                        value: state[0].toUpperCase() +
                            state.substring(1).toLowerCase(),
                        items: <String>['Pending', 'Approved', 'Rejected']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            if (value != null) {
                              state = value.toLowerCase();
                            }
                          });
                        },
                      ),
                      const SizedBox(width: 16), // Adjust spacing as needed
                      CustomButton(
                        text: 'Update',
                        onPressed: () {
                          notifier.updateDonation(
                              donationId: widget.data.id,
                              donationState: state!,
                              onUpdated: () {
                                ref.invalidate(donationDetailNotifierProvider(
                                    widget.data.id));
                              });
                        },
                      ),
                    ],
                  ),
                  const Divider(),
                  updateUiState.when(
                    initial: () => const SizedBox.shrink(),
                    loading: () => const Center(
                      child: Text('Updating...'),
                    ),
                    success: () => const Text('Updated successfully'),
                    error: (error) => Text(error),
                  ),
                ];
              }
              return [const SizedBox.shrink()];
            },
            error: (e) => [const SizedBox.shrink()],
          ),
          Row(
            children: [
              const Text('Donated at: '),
              for (final location in widget.data.donatedDistricts)
                Text(location.district.name),
              for (final location in widget.data.donatedUpazilas)
                Text(
                    '${location.upazila.name}, ${location.upazila.district.name}'),
              for (final location in widget.data.donatedUnions)
                Text(
                    '${location.union.name}, ${location.union.upazila.name} ${location.union.upazila.district.name}'),
            ],
          ),
          const SizedBox(height: 8),
          DonatedItemView(data: widget.data),
          const SizedBox(height: 8),
          Text(widget.data.description),
          const Divider(),
          const SizedBox(height: 16),
          const Text('Images'),
          const SizedBox(height: 8),
          if (widget.data.images.isNotEmpty) ...[
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.data.images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Image.network(
                      widget.data.images[index],
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 32),
          ],
        ],
      ),
    );
  }

  String getFormattedTime(String time) {
    final dateTime = DateTime.parse(time);
    // dd/mm/yyyy hh:mm
    return '${dateTime.day}/${dateTime.month}/${dateTime.year} -${dateTime.hour < 10 ? '0${dateTime.hour}' : dateTime.hour}:${dateTime.minute < 10 ? '0${dateTime.minute}' : dateTime.minute}';
  }
}

class DonatedItemView extends StatefulWidget {
  final Donation data;

  const DonatedItemView({
    super.key,
    required this.data,
  });

  @override
  State<DonatedItemView> createState() => _DonatedItemViewState();
}

class _DonatedItemViewState extends State<DonatedItemView> {
  final List<DonatedItem> donatedItem = [];

  @override
  void initState() {
    for (final district in widget.data.donatedDistricts) {
      for (final item in district.donatedItems) {
        donatedItem.add(item);
      }
    }

    for (final upazila in widget.data.donatedUpazilas) {
      for (final item in upazila.donatedItems) {
        donatedItem.add(item);
      }
    }

    for (final union in widget.data.donatedUnions) {
      for (final item in union.donatedItems) {
        donatedItem.add(item);
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.grey),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Item Name',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Text('Quantity', style: TextStyle(fontSize: 14)),
              ],
            ),
          ),
          const Divider(),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: donatedItem.length,
            itemBuilder: (context, index) {
              final item = donatedItem[index];
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        item.name,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                    Text(
                      '${item.quantity} ${item.unit}',
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(),
          ),
        ],
      ),
    );
  }
}
