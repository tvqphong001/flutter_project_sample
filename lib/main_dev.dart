import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';

// link refer: https://medium.com/flutter-community/flutter-scalable-folder-files-structure-8f860faafebd

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(const MyApp());
}