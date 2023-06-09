import 'package:flutter/material.dart';
import 'package:hero_software_test/app/core/styles/color_style.dart';
import 'package:hero_software_test/app/core/styles/text_styles.dart';
import 'package:hero_software_test/app/core/widgets/container_logo.dart';
import 'package:hero_software_test/app/core/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();

  //Transformando em stateful para usar o dispose nas controllers
  @override
  void dispose() {
    emailEC.dispose();
    passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
