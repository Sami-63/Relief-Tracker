import 'package:flutter/material.dart';

extension AdaptiveHelper on BuildContext {
  bool get isDisplayDesktop => MediaQuery.of(this).size.width > 992;

  bool get isDisplayMobile => MediaQuery.of(this).size.width <= 992;
}
