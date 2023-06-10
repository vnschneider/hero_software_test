import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hero_software_test/app/pages/home/home_page.dart';
import 'package:hero_software_test/app/pages/recovery/email_confirmation_page.dart';
import 'package:hero_software_test/app/pages/recovery/password_confirmation_page.dart';
import 'package:hero_software_test/app/pages/register/register_page.dart';
import 'package:hero_software_test/app/pages/splash/splash_page.dart';
import 'package:hero_software_test/app/services/auth_check.dart';

import '../../pages/login/login_page.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(
    name: '/',
    page: () => const AuthCheck(),
    curve: Curves.easeIn,
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/splash',
    page: () => const SplashPage(),
    curve: Curves.easeIn,
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/login',
    page: () => const LoginPage(),
    curve: Curves.easeIn,
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/register',
    page: () => const RegisterPage(),
    curve: Curves.easeIn,
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/home',
    page: () => const HomePage(),
    curve: Curves.easeIn,
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/email',
    page: () => const EmailConfirmationPage(),
    curve: Curves.easeIn,
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/password',
    page: () => const PasswordConfirmationPage(),
    curve: Curves.easeIn,
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  ),
];
