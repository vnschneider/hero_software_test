import 'package:flutter/material.dart';
import 'package:hero_software_test/app/core/helper/size_extensions.dart';
import 'package:hero_software_test/app/core/styles/color_style.dart';
import 'package:hero_software_test/app/core/styles/text_styles.dart';
import 'package:hero_software_test/app/core/widgets/container_logo.dart';
import 'package:hero_software_test/app/core/widgets/custom_elevated_button.dart';
import 'package:hero_software_test/app/core/widgets/custom_text_field.dart';

class PasswordConfirmationPage extends StatelessWidget {
  const PasswordConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  'Digite sua nova senha',
                  style: context.textStyles.textTitle
                      .copyWith(color: context.colors.secondary),
                ),
                const SizedBox(height: 20),                
                CustomTextField(
                  label: 'Digite sua nova senha',
                    isMandatory: false,
                    fieldWidth: context.percentWidth(.9),
                    hintText: 'Senha'),
                    const SizedBox(height: 20),
                    CustomTextField(
                    label: 'Digite novamente',
                    isMandatory: false,
                    fieldWidth: context.percentWidth(.9),
                    hintText: 'Senha'),
                const Spacer(),
                CustomElevatedButton(
                    onPressed: () {}, buttonTitle: 'CONFIRMAR'),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
