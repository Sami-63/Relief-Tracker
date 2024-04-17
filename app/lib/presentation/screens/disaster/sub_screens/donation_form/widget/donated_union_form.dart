import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/domain/model/donation/donated_location.dart';
import 'package:relief_tracker/domain/model/donation/donation.dart';
import 'package:relief_tracker/domain/model/location/union.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_form/notifier/location_fetch_notifier.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_form/widget/custom_button.dart';

import '../notifier/provider.dart';

class DonatedUnionForm extends ConsumerStatefulWidget {
  const DonatedUnionForm({super.key});

  @override
  ConsumerState<DonatedUnionForm> createState() => _DonatedUnionFormState();
}

class _DonatedUnionFormState extends ConsumerState<DonatedUnionForm> {
  final TextEditingController _donatedPeopleControllers =
      TextEditingController();
  final List<TextEditingController> _donatedItemNameControllers = [];
  final List<TextEditingController> _donatedItemQuantityControllers = [];
  final List<TextEditingController> _donatedItemUnitControllers = [];
  final List<TextEditingController> _donatedItemDescriptionControllers = [];

  Union? _selectedUnion;

  String? errorText;

  @override
  Widget build(BuildContext context) {
    final donationNotifier = ref.watch(donationNotifierProvider);
    final locationNotifier = ref.read(locationFetchNotifierProvider.notifier);

    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context)
            .viewInsets
            .bottom, // Adjust padding based on keyboard height
        left: 16,
        right: 16,
        top: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Union Form',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Flexible(
                  child: DropdownSearch<Union>(
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
                      await locationNotifier.updateUnionSearch(filter);
                      return locationNotifier.unions;
                    },
                    itemAsString: (Union union) => union.name,
                    onChanged: (value) {
                      setState(() {
                        _selectedUnion = value;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 120,
                  child: TextField(
                    controller: _donatedPeopleControllers,
                    decoration: const InputDecoration(
                      hintText: 'Donated People',
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 4,
                      ),
                    ),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Donated Items',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _donatedItemNameControllers.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _donatedItemNameControllers[index],
                        decoration: const InputDecoration(
                          hintText: 'Enter item name',
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                        ),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 60,
                      child: TextField(
                        controller: _donatedItemQuantityControllers[index],
                        decoration: const InputDecoration(
                          hintText: 'Amount',
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                        ),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 50,
                      child: TextField(
                        controller: _donatedItemUnitControllers[index],
                        decoration: const InputDecoration(
                          hintText: 'Unit',
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                        ),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        _donatedItemNameControllers.removeAt(index);
                        _donatedItemQuantityControllers.removeAt(index);
                        _donatedItemUnitControllers.removeAt(index);
                        _donatedItemDescriptionControllers.removeAt(index);
                        setState(() {});
                      },
                      child: const Icon(Icons.clear),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 10),
            ),
            if (errorText != null) ...[
              const SizedBox(height: 16),
              Text(
                errorText!,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.red,
                    ),
              ),
            ],
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  text: 'Add Donated Item',
                  onPressed: () {
                    _donatedItemNameControllers.add(TextEditingController());
                    _donatedItemQuantityControllers
                        .add(TextEditingController());
                    _donatedItemUnitControllers.add(TextEditingController());
                    _donatedItemDescriptionControllers
                        .add(TextEditingController());
                    setState(() {});
                  },
                ),
                const SizedBox(width: 16),
                CustomButton(
                  text: 'Submit',
                  onPressed: () {
                    if (_selectedUnion == null ||
                        _donatedPeopleControllers.text.isEmpty) {
                      setState(() {
                        errorText = 'Please fill all the fields';
                      });
                      return;
                    }

                    final List<DonatedItem> donatedItems = [];
                    for (var i = 0;
                        i < _donatedItemNameControllers.length;
                        i++) {
                      if (_donatedItemNameControllers[i].text.isEmpty ||
                          _donatedItemQuantityControllers[i].text.isEmpty ||
                          _donatedItemUnitControllers[i].text.isEmpty) {
                        setState(() {
                          errorText = 'Please fill all the fields';
                        });
                        return;
                      }

                      donatedItems.add(
                        DonatedItem(
                          id: -1,
                          name: _donatedItemNameControllers[i].text,
                          quantity: double.parse(
                              _donatedItemQuantityControllers[i].text),
                          unit: _donatedItemUnitControllers[i].text,
                          description:
                              _donatedItemDescriptionControllers[i].text,
                        ),
                      );
                    }
                    donationNotifier.addDonatedUnion(
                      DonatedUnion(
                        id: -1,
                        union: _selectedUnion!,
                        donatedPeople:
                            int.parse(_donatedPeopleControllers.text),
                        donatedItems: donatedItems,
                      ),
                    );
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
