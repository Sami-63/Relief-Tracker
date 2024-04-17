import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

typedef ImagePickerProvider
    = AutoDisposeChangeNotifierProvider<ImagePickerNotifier>;

final ImagePickerProvider imagePickerProvider =
    ChangeNotifierProvider.autoDispose<ImagePickerNotifier>(
  (ref) => ImagePickerNotifier(),
);

class ImagePickerNotifier extends ChangeNotifier {
  final ImagePicker _picker = ImagePicker();
  final List<String> _imagePaths = [];
  String? error;

  List<String> get imagePaths => _imagePaths;

  Future<void> pickImage() async {
    try {
      final images = await _picker.pickMultiImage(
        imageQuality: 50,
      );
      for (final image in images) {
        _imagePaths.add(image.path);
      }
      notifyListeners();
    } catch (e) {
      error = e.toString();
      notifyListeners();
    }
  }

  void removeImage(String path) {
    _imagePaths.remove(path);
    notifyListeners();
  }
}
