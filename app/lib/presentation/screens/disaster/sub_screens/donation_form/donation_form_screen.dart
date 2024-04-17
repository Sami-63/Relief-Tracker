import 'dart:io';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/domain/model/accounts/user.dart';
import 'package:relief_tracker/presentation/route_manager/route_manager.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_form/notifier/location_fetch_notifier.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_form/widget/custom_button.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/donation_form/notifier/image_notifier.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/donation_form/state/create_donation_ui_state.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/donation_form/widget/donated_district_form.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/donation_form/widget/donated_union_form.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/donation_form/widget/donated_updazila_form.dart';

import 'notifier/provider.dart';

class DonationFormScreenArgs {
  final int disasterId;

  const DonationFormScreenArgs({
    required this.disasterId,
  });
}

class DonationFormScreen extends ConsumerStatefulWidget {
  final DonationFormScreenArgs args;

  const DonationFormScreen({super.key, required this.args});

  @override
  ConsumerState<DonationFormScreen> createState() => _DonationFormScreenState();
}

class _DonationFormScreenState extends ConsumerState<DonationFormScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  final donorKey = GlobalKey<DropdownSearchState<User>>();

  String? errorText;

  @override
  Widget build(BuildContext context) {
    final locationUiState = ref.watch(locationFetchNotifierProvider);
    final locationNotifier = ref.read(locationFetchNotifierProvider.notifier);

    final userUiState = ref.watch(userNotifierProvider);
    final userNotifier = ref.read(userNotifierProvider.notifier);

    final donationNotifier = ref.watch(donationNotifierProvider);

    final donationCreateUiState = ref.watch(createDonationNotifierProvider);
    final donationCreateNotifier =
        ref.read(createDonationNotifierProvider.notifier);

    final notifier = ref.watch(imagePickerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Donation Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (donationCreateUiState is SuccessState)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 12.0,
                  ),
                  margin: const EdgeInsets.only(bottom: 12.0),
                  decoration: BoxDecoration(
                    color: Colors.green.shade500,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Text(
                    'Donation Created Successfully',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),

              if (donationCreateUiState is ErrorState)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 12.0,
                  ),
                  margin: const EdgeInsets.only(bottom: 12.0),
                  decoration: BoxDecoration(
                    color: Colors.red.shade500,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Text(
                    donationCreateUiState.maybeWhen(
                      orElse: () => "Unknown error",
                      error: (error) => error,
                    ),
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),

              Text(
                'Title',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(
                  hintText: 'Enter title',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Description',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              TextField(
                controller: _descriptionController,
                maxLines: 4,
                decoration: const InputDecoration(
                  hintText: 'Enter description',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // ================== Donors ==================
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        'Donors',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    Divider(
                      color: Colors.grey.withOpacity(0.5),
                      thickness: 1.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: donationNotifier.donors.length,
                        itemBuilder: (context, index) {
                          final donor = donationNotifier.donors[index];
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(donor.username),
                              IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  donationNotifier.removeDonor(donor);
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Flexible(
                    child: DropdownSearch<User>(
                      key: donorKey,
                      clearButtonProps: const ClearButtonProps(
                        icon: Icon(Icons.clear),
                        iconSize: 20,
                        isVisible: true,
                      ),
                      popupProps: const PopupProps.menu(
                        showSearchBox: true,
                        isFilterOnline: true,
                      ),
                      asyncItems: (filter) async {
                        await userNotifier.updateSearch(filter);
                        return userNotifier.users;
                      },
                      itemAsString: (User district) => district.username,
                      onChanged: (value) {
                        donationNotifier.setSelectedDonor(value);
                      },
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  SizedBox(
                    width: 120.0,
                    child: CustomButton(
                      text: 'Add Donor',
                      onPressed: () {
                        if (donationNotifier.selectedDonor == null) {
                          return;
                        }
                        donationNotifier.addDonor(
                          donationNotifier.selectedDonor!.username,
                        );
                        donorKey.currentState!.clear();
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // ================== Donors ==================

              if (donationNotifier.donatedDistricts.isEmpty &&
                  donationNotifier.donatedUpazilas.isEmpty &&
                  donationNotifier.donatedUnions.isEmpty)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      text: 'Add Location',
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            surfaceTintColor: Colors.white,
                            backgroundColor: Colors.white,
                            elevation: 4.0,
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      builder: (context) {
                                        return const SingleChildScrollView(
                                          child: DonatedDistrictForm(),
                                        );
                                      },
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    side: const BorderSide(
                                        color: Colors.grey, width: 1),
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black87,
                                    shadowColor: Colors.transparent,
                                  ),
                                  child: Text(
                                    'Add Donated Districts',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      builder: (context) {
                                        return const SingleChildScrollView(
                                          child: DonatedUpazilaForm(),
                                        );
                                      },
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    side: const BorderSide(
                                        color: Colors.grey, width: 1),
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black87,
                                    shadowColor: Colors.transparent,
                                  ),
                                  child: Text(
                                    'Add Donated Upazilas',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      builder: (context) {
                                        return const SingleChildScrollView(
                                          child: DonatedUnionForm(),
                                        );
                                      },
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    side: const BorderSide(
                                        color: Colors.grey, width: 1),
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black87,
                                    shadowColor: Colors.transparent,
                                  ),
                                  child: Text(
                                    'Add Donated Unions',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),

              if (donationNotifier.donatedDistricts.isNotEmpty ||
                  donationNotifier.donatedUpazilas.isNotEmpty ||
                  donationNotifier.donatedUnions.isNotEmpty) ...[
                /// ================== Donated Districts ==================
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: donationNotifier.donatedDistricts.length,
                  itemBuilder: (context, index) {
                    final donatedDistrict =
                        donationNotifier.donatedDistricts[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    donatedDistrict.district.name,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    'Donated People: ${donatedDistrict.donatedPeople}',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  donationNotifier.removeDonatedDistrict(
                                    donatedDistrict,
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                          ),
                          child: ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: donatedDistrict.donatedItems.length,
                            itemBuilder: (context, index) {
                              final donatedItem =
                                  donatedDistrict.donatedItems[index];
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Row(
                                  children: [
                                    Text(donatedItem.name),
                                    const Spacer(),
                                    Text(
                                      '${donatedItem.quantity} ${donatedItem.unit}',
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const Divider(
                                color: Colors.grey,
                                thickness: 1.0,
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                    );
                  },
                ),

                /// ================== Donated Upazilas ==================
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: donationNotifier.donatedUpazilas.length,
                  itemBuilder: (context, index) {
                    final donatedUpazila =
                        donationNotifier.donatedUpazilas[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    donatedUpazila.upazila.name,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    'Donated People: ${donatedUpazila.donatedPeople}',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  donationNotifier.removeDonatedUpazila(
                                    donatedUpazila,
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                          ),
                          child: ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: donatedUpazila.donatedItems.length,
                            itemBuilder: (context, index) {
                              final donatedItem =
                                  donatedUpazila.donatedItems[index];
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Row(
                                  children: [
                                    Text(donatedItem.name),
                                    const Spacer(),
                                    Text(
                                      '${donatedItem.quantity} ${donatedItem.unit}',
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const Divider(
                                color: Colors.grey,
                                thickness: 1.0,
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                    );
                  },
                ),

                /// ================== Donated Unions ==================
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: donationNotifier.donatedUnions.length,
                  itemBuilder: (context, index) {
                    final donatedUnion = donationNotifier.donatedUnions[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    donatedUnion.union.name,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    'Donated People: ${donatedUnion.donatedPeople}',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  donationNotifier.removeDonatedUnion(
                                    donatedUnion,
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                          ),
                          child: ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: donatedUnion.donatedItems.length,
                            itemBuilder: (context, index) {
                              final donatedItem =
                                  donatedUnion.donatedItems[index];
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Row(
                                  children: [
                                    Text(donatedItem.name),
                                    const Spacer(),
                                    Text(
                                      '${donatedItem.quantity} ${donatedItem.unit}',
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const Divider(
                                color: Colors.grey,
                                thickness: 1.0,
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                    );
                  },
                ),
              ],

              /// Images

              const Text(
                'Images',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (notifier.imagePaths.isNotEmpty) ...[
                const SizedBox(height: 16),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: notifier.imagePaths.length,
                    itemBuilder: (context, index) {
                      final path = notifier.imagePaths[index];
                      return Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 8),
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: FileImage(File(path)),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                notifier.removeImage(path);
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],

              /// Add image

              const SizedBox(height: 16),
              CustomButton(
                text: 'Select images',
                onPressed: () {
                  notifier.pickImage();
                },
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getCreateButton(
                    donationCreateUiState,
                    () {
                      donationCreateNotifier.createDonation(
                        title: _titleController.text,
                        description: _descriptionController.text,
                        disasterId: widget.args.disasterId,
                        donors: donationNotifier.donors,
                        donatedDistricts: donationNotifier.donatedDistricts,
                        donatedUpazilas: donationNotifier.donatedUpazilas,
                        donatedUnions: donationNotifier.donatedUnions,
                        imagePaths: notifier.imagePaths,
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget getCreateButton(
    CreateDonationUiState state,
    Function onPressed,
  ) {
    if (state is LoadingState) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (state is ErrorState) {
      setState(() {
        errorText = state.message;
      });
      return ElevatedButton(
        onPressed: onPressed as void Function()?,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
        ),
        child: Text(
          'CREATE',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: Colors.white),
        ),
      );
    } else if (state is SuccessState) {
      return ElevatedButton(
        onPressed: () {
          RouteManager.of(context).pop();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
        ),
        child: Text(
          'GO BACK',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: Colors.white),
        ),
      );
    }

    return ElevatedButton(
      onPressed: onPressed as void Function()?,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
      ),
      child: Text(
        'CREATE',
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(color: Colors.white),
      ),
    );
  }
}
