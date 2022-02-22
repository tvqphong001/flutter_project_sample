import 'package:get/get.dart';

import '../../core/splash/splash_screen.dart';
class Routes {
  const Routes._();

  static const SPLASH_SCREEN = '/splash';
}

class AppPages {
  static final pages = [
    GetPage(name: Routes.SPLASH_SCREEN, page: () => const SplashScreen()),
  ];
}
