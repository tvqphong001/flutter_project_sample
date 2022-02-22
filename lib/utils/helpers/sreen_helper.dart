import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: non_constant_identifier_names
final Screen = _ScreenHelper();
const designWidth = 375;

class _ScreenHelper {
  double get statusBar => MediaQuery.of(Get.context!).padding.top;
  double get bottomBar => MediaQuery.of(Get.context!).padding.bottom;

  double getSsp(double size) {
    double _screenSize = (size / designWidth) * MediaQuery.of(Get.context!).size.width;

    if (_screenSize >= size) {
      _screenSize = size;
    }

    return _screenSize;
  }

  double get appbar => 69 + statusBar;

  double get bottomNavigation => 63.0;

  double get heightScreen => MediaQuery.of(Get.context!).size.height;
  double get widthScreen => MediaQuery.of(Get.context!).size.width;
  double get centerScreen => (Screen.heightScreen - Screen.statusBar - Screen.bottomBar - 69 * 2) / 2;
}
