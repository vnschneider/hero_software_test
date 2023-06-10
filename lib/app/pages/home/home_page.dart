import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hero_software_test/app/controller/user_auth_controller.dart';
import 'package:hero_software_test/app/core/styles/text_styles.dart';
import 'package:hero_software_test/app/core/widgets/custom_elevated_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userAuthController = Get.put(UserAuthController());
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'E-mail: ${user.email}',
                style: context.textStyles.textTitle,
              ),
              CustomElevatedButton(
                  onPressed: () => userAuthController.signOut(context: context),
                  buttonTitle: 'Sair'),
            ],
          ),
        ));
  }
}
