import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hero_software_test/app/core/routes/named_routes.dart';
import 'package:hero_software_test/app/core/styles/theme_style.dart';
import 'package:hero_software_test/app/pages/splash/splash_page.dart';

class HSTest extends StatelessWidget {
  const HSTest({super.key});

  @override
  Widget build(BuildContext context) {
final GlobalKey<ScaffoldMessengerState> snackbarKey =
    GlobalKey<ScaffoldMessengerState>();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeStyle.theme,
      scaffoldMessengerKey: snackbarKey,
      home: const SplashPage(),
      getPages: getPages,
    );
  }
}
