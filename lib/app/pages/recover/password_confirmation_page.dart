import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hero_software_test/app/controller/user_auth_controller.dart';
import 'package:hero_software_test/app/core/styles/color_style.dart';
import 'package:hero_software_test/app/core/styles/text_styles.dart';
import 'package:hero_software_test/app/core/widgets/custom_elevated_button.dart';

class PasswordConfirmationPage extends StatefulWidget {
  const PasswordConfirmationPage({super.key});

  @override
  State<PasswordConfirmationPage> createState() =>
      _PasswordConfirmationPageState();
}

class _PasswordConfirmationPageState extends State<PasswordConfirmationPage> {
  bool passwordVisibility = false;
  bool confirmPasswordVisibility = false;
  final _emailEC = TextEditingController();

  @override
  void dispose() {
    _emailEC.dispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userAuthController = Get.put(UserAuthController());
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Quase tudo pronto!',
                  style: context.textStyles.textTitle
                      .copyWith(color: context.colors.secondary),
                ),
                const SizedBox(height: 20),
                Text(
                  'Cheque sua caixa de e-mails e siga os passos para alterar sua senha. Em seguida, faça o login novamente na nossa plataforma.',
                  style: context.textStyles.textRegular
                      .copyWith(fontSize: 18, color: Colors.grey.shade600),
                ),
                const SizedBox(height: 20),
                const Spacer(),
                CustomElevatedButton(
                    onPressed: () {
                      userAuthController.resetPassword(
                          email: _emailEC.text.trim());
                      Get.offNamed('/login');
                    },
                    buttonTitle: 'CONFIRMAR'),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
