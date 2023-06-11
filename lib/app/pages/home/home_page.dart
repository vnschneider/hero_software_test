import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hero_software_test/app/controller/user_auth_controller.dart';
import 'package:hero_software_test/app/core/styles/color_style.dart';
import 'package:hero_software_test/app/core/styles/text_styles.dart';

import 'components/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userAuthController = Get.put(UserAuthController());
    final user = FirebaseAuth.instance.currentUser;
    return SafeArea(
      child: Scaffold(
        drawer:
            CustomDrawer(user: user, userAuthController: userAuthController),
        appBar: AppBar(
          backgroundColor: context.colors.secondary,
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(
            'Página inicial',
            style: context.textStyles.textTitle,
          ),
        ),
        body: Center(
          child: Text(
            'Usuário logado com sucesso',
            style: context.textStyles.textTitle,
          ),
        ),
      ),
    );
  }
}
