import 'package:flutter/material.dart';
import 'package:hero_software_test/app/core/helper/size_extensions.dart';
import 'package:hero_software_test/app/core/styles/color_style.dart';
import 'package:hero_software_test/app/core/styles/text_styles.dart';
import 'package:hero_software_test/app/core/widgets/custom_elevated_button.dart';
import 'package:hero_software_test/app/core/widgets/custom_text_field.dart';

class EmailRecoveryPage extends StatelessWidget {
  const EmailRecoveryPage({super.key});

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
                  'Digite seu e-mail',
                  style: context.textStyles.textTitle
                      .copyWith(color: context.colors.secondary),
                ),
                const SizedBox(height: 20),
                Text(
                  'Digite seu e-mail cadastrado para receber as instruções de redefinição. Fique tranquilo, você poderá alterá-la em poucos passos.',
                  style: context.textStyles.textRegular
                      .copyWith(fontSize: 18, color: Colors.grey.shade600),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                    isMandatory: false,
                    fieldWidth: context.percentWidth(.9),
                    hintText: 'E-mail'),
                const Spacer(),
                CustomElevatedButton(
                    onPressed: () {}, buttonTitle: 'PRÓXIMO'),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
