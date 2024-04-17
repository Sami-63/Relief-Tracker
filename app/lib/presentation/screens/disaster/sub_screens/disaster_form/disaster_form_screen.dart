import 'dart:io';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/domain/model/location/district.dart';
import 'package:relief_tracker/domain/model/location/union.dart';
import 'package:relief_tracker/domain/model/location/upazila.dart';
import 'package:relief_tracker/presentation/route_manager/route_manager.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_form/notifier/create_disaster_notifier.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_form/notifier/location_fetch_notifier.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_form/notifier/location_notifier.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_form/state/create_disaster_report_ui_state.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/disaster_form/widget/custom_button.dart';
import 'package:relief_tracker/presentation/screens/disaster/sub_screens/donation_form/notifier/image_notifier.dart';

class DisasterFormScreen extends ConsumerStatefulWidget {
  const DisasterFormScreen({super.key});

  @override
  ConsumerState<DisasterFormScreen> createState() => _DisasterFormScreenState();
}

class _DisasterFormScreenState extends ConsumerState<DisasterFormScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  final TextEditingController _districtController =
      TextEditingController(text: '');
  final TextEditingController _upazilaController =
      TextEditingController(text: '');
  final TextEditingController _unionController =
      TextEditingController(text: '');

  final districtKey = GlobalKey<DropdownSearchState<District>>();
  final upazilaKey = GlobalKey<DropdownSearchState<Upazila>>();
  final unionKey = GlobalKey<DropdownSearchState<Union>>();

  final _formKey = GlobalKey<FormState>();

  DateTime? _selectedStartTime;
  DateTime? _selectedEndTime;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _selectDateTime(BuildContext context) async {
    final DateTime? pickedDateTime = await showDatePicker(
      context: context,
      initialDate: _selectedStartTime,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );

    if (pickedDateTime != null && context.mounted) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime:
            TimeOfDay.fromDateTime(_selectedStartTime ?? DateTime.now()),
      );
      if (pickedTime != null) {
        setState(() {
          _selectedStartTime = DateTime(
            pickedDateTime.year,
            pickedDateTime.month,
            pickedDateTime.day,
            pickedTime.hour,
            pickedTime.minute,
          );
        });
      }
    }
  }

  Future<void> _selectEndTime(BuildContext context) async {
    final DateTime? pickedDateTime = await showDatePicker(
      context: context,
      initialDate: _selectedEndTime ?? DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (pickedDateTime != null && context.mounted) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(_selectedEndTime ?? DateTime.now()),
      );
      if (pickedTime != null) {
        setState(() {
          _selectedEndTime = DateTime(
            pickedDateTime.year,
            pickedDateTime.month,
            pickedDateTime.day,
            pickedTime.hour,
            pickedTime.minute,
          );
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final disasterUiState = ref.watch(createDisasterNotifierProvider);

    final uiState = ref.watch(locationFetchNotifierProvider);
    final notifier = ref.read(locationFetchNotifierProvider.notifier);

    final locationNotifier = ref.watch(locationNotifierProvider);

    final affectedDistricts = locationNotifier.affectedDistricts;
    final affectedUpazilas = locationNotifier.affectedUpazilas;
    final affectedUnions = locationNotifier.affectedUnions;

    final imageNotifier = ref.watch(imagePickerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Disaster Report'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                    labelText: 'Title',
                  ),
                ),
                const SizedBox(height: 20.0),
                TextField(
                  controller: _descriptionController,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                  ),
                  maxLines: 3,
                ),
                const SizedBox(height: 20.0),

                TextFormField(
                  readOnly: true,
                  controller: TextEditingController(
                    text: _selectedStartTime != null
                        ? '${_selectedStartTime!.day}/${_selectedStartTime!.month}/${_selectedStartTime!.year} ${_selectedStartTime!.hour}:${_selectedStartTime!.minute}'
                        : '',
                  ),
                  onTap: () => _selectDateTime(context),
                  decoration: const InputDecoration(
                    labelText: 'Start Date Time',
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a start date';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),

                TextFormField(
                  readOnly: true,
                  controller: TextEditingController(
                    text: _selectedEndTime != null
                        ? '${_selectedEndTime!.day}/${_selectedEndTime!.month}/${_selectedEndTime!.year}'
                        : '',
                  ),
                  onTap: () => _selectEndTime(context),
                  decoration: const InputDecoration(
                    labelText: 'End Date Time (Optional)',
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                ),

                const SizedBox(height: 20.0),

                // ==============================
                ...[
                  if (affectedDistricts.isNotEmpty) ...[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Affected Districts',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 8.0),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: affectedDistricts.length,
                            itemBuilder: (context, index) {
                              final district = affectedDistricts[index];
                              return Row(
                                children: [
                                  Text(district.district.name),
                                  const SizedBox(width: 10.0),
                                  Text(district.affectedPeople.toString()),
                                  const Expanded(child: SizedBox()),
                                  IconButton(
                                    onPressed: () {
                                      locationNotifier
                                          .removeAffectedDistrict(district);
                                    },
                                    icon: const Icon(Icons.clear),
                                  ),
                                ],
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 10.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                  ],
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add Affected Districts',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Flexible(
                              child: DropdownSearch<District>(
                                key: districtKey,
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
                                  await notifier.updateDistrictSearch(filter);
                                  return notifier.districts;
                                },
                                itemAsString: (District district) =>
                                    district.name,
                                onChanged: (value) {
                                  locationNotifier.setAffectedDistrict(
                                    district: value,
                                  );
                                },
                              ),
                            ),
                            const SizedBox(width: 20.0),
                            SizedBox(
                              width: 100.0,
                              child: TextField(
                                controller: _districtController,
                                decoration: const InputDecoration(
                                  labelText: 'Affected People',
                                  labelStyle: TextStyle(fontSize: 12.0),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        CustomButton(
                          text: 'Add Affected District',
                          onPressed: () {
                            locationNotifier.setAffectedDistrict(
                              affectedPeople: int.parse(
                                _districtController.text,
                              ),
                            );
                            locationNotifier.addAffectedDistrict();

                            districtKey.currentState!.clear();
                            _districtController.clear();
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                ],
                // ==============================

                // ==============================
                ...[
                  if (affectedUpazilas.isNotEmpty) ...[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Affected Upazilas',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 8.0),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: affectedUpazilas.length,
                            itemBuilder: (context, index) {
                              final upazila = affectedUpazilas[index];
                              return Row(
                                children: [
                                  Text(upazila.upazila.name),
                                  const SizedBox(width: 10.0),
                                  Text(upazila.affectedPeople.toString()),
                                  const Expanded(child: SizedBox()),
                                  IconButton(
                                    onPressed: () {
                                      locationNotifier
                                          .removeAffectedUpazila(upazila);
                                    },
                                    icon: const Icon(Icons.clear),
                                  ),
                                ],
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 10.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                  ],
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add Affected Upazilas',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Flexible(
                              child: DropdownSearch<Upazila>(
                                key: upazilaKey,
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
                                  await notifier.updateUpazilaSearch(filter);
                                  return notifier.upazilas;
                                },
                                itemAsString: (Upazila upazila) => upazila.name,
                                onChanged: (value) {
                                  locationNotifier.setAffectedUpazila(
                                    upazila: value,
                                  );
                                },
                              ),
                            ),
                            const SizedBox(width: 20.0),
                            SizedBox(
                              width: 100.0,
                              child: TextField(
                                controller: _upazilaController,
                                decoration: const InputDecoration(
                                  labelText: 'Affected People',
                                  labelStyle: TextStyle(fontSize: 12.0),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        CustomButton(
                          text: 'Add Affected Upazila',
                          onPressed: () {
                            locationNotifier.setAffectedUpazila(
                              affectedPeople: int.parse(
                                _upazilaController.text,
                              ),
                            );
                            locationNotifier.addAffectedUpazila();

                            upazilaKey.currentState!.clear();
                            _upazilaController.clear();
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                ],
                // ==============================

                // ==============================
                ...[
                  if (affectedUnions.isNotEmpty) ...[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Affected Unions',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 8.0),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: affectedUnions.length,
                            itemBuilder: (context, index) {
                              final union = affectedUnions[index];
                              return Row(
                                children: [
                                  Text(union.union.name),
                                  const SizedBox(width: 10.0),
                                  Text(union.affectedPeople.toString()),
                                  const Expanded(child: SizedBox()),
                                  IconButton(
                                    onPressed: () {
                                      locationNotifier
                                          .removeAffectedUnion(union);
                                    },
                                    icon: const Icon(Icons.clear),
                                  ),
                                ],
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 10.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                  ],
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add Affected Unions',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Flexible(
                              child: DropdownSearch<Union>(
                                key: unionKey,
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
                                  await notifier.updateUnionSearch(filter);
                                  return notifier.unions;
                                },
                                itemAsString: (Union union) => union.name,
                                onChanged: (value) {
                                  locationNotifier.setAffectedUnion(
                                    union: value,
                                  );
                                },
                              ),
                            ),
                            const SizedBox(width: 20.0),
                            SizedBox(
                              width: 100.0,
                              child: TextField(
                                controller: _unionController,
                                decoration: const InputDecoration(
                                  labelText: 'Affected People',
                                  labelStyle: TextStyle(fontSize: 12.0),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        CustomButton(
                          text: 'Add Affected Union',
                          onPressed: () {
                            locationNotifier.setAffectedUnion(
                              affectedPeople: int.parse(
                                _unionController.text,
                              ),
                            );
                            locationNotifier.addAffectedUnion();

                            unionKey.currentState!.clear();
                            _unionController.clear();
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                ],
                // ==============================

                const Text(
                  'Images',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (imageNotifier.imagePaths.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imageNotifier.imagePaths.length,
                      itemBuilder: (context, index) {
                        final path = imageNotifier.imagePaths[index];
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
                                  imageNotifier.removeImage(path);
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
                    imageNotifier.pickImage();
                  },
                ),

                getCreateButton(disasterUiState, () {
                  if (disasterUiState is LoadingState ||
                      disasterUiState is SuccessState) {
                    return;
                  }

                  final notifier =
                      ref.read(createDisasterNotifierProvider.notifier);
                  final isValid = _formKey.currentState?.validate() ?? false;
                  if (isValid) {
                    notifier.createDisaster(
                      title: _titleController.text,
                      description: _descriptionController.text,
                      startTime: _selectedStartTime!,
                      endTime: _selectedEndTime,
                      affectedDistricts: affectedDistricts,
                      affectedUpazilas: affectedUpazilas,
                      affectedUnions: affectedUnions,
                      imagePaths: imageNotifier.imagePaths,
                    );
                  }
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getCreateButton(
    CreateDisasterReportUiState state,
    Function onPressed,
  ) {
    if (state is InitialState) {
      return CustomButton(
        onPressed: () => onPressed(),
        text: 'Create Disaster Report',
      );
    }

    if (state is LoadingState) {
      return const SizedBox(
        height: 24,
        child: CircularProgressIndicator(),
      );
    }

    if (state is SuccessState) {
      return CustomButton(
        onPressed: () {
          RouteManager.of(context).pop();
        },
        text: 'Disaster Report Created, Go To Home Screen',
      );
    }

    return const Text('Error encountered while creating disaster report');
  }
}
