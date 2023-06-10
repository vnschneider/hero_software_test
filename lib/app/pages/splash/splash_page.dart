import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hero_software_test/app/core/styles/color_style.dart';
import 'package:hero_software_test/app/pages/login/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedSplashScreen(
        centered: true,
        splash: 'assets/images/logo.png',
        nextScreen: const LoginPage(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 3000,
        curve: Curves.easeIn,
        backgroundColor: context.colors.primary,
        splashIconSize: 100,
      ),
    );
  }
}
