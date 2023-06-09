import 'package:flutter/material.dart';
import 'package:hero_software_test/app/core/styles/theme_style.dart';
import 'package:hero_software_test/app/pages/login/login_page.dart';

class HSTest extends StatelessWidget {
  const HSTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeStyle.theme,
      home: const LoginPage(),
    );
  }
}
