import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'bindings/initial_binding.dart';
import 'config/language/language.dart';
import 'config/routes/routes.dart';
import 'modules/home/screen/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: InitialBinding(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      translations: Language(),
      locale: const Locale('en', 'EN'),
      fallbackLocale: const Locale('en', 'EN'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        RefreshLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en', 'EN'), // English, no country code
        Locale('vi', 'VN'),
      ],
      getPages: AppPages.pages,
      initialRoute: Routes.SPLASH_SCREEN,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeft,
    );
  }
}