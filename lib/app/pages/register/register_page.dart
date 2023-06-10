import 'package:flutter/material.dart';
import 'package:hero_software_test/app/core/helper/size_extensions.dart';
import 'package:hero_software_test/app/core/styles/color_style.dart';
import 'package:hero_software_test/app/core/styles/text_styles.dart';
import 'package:hero_software_test/app/core/widgets/container_logo.dart';
import 'package:hero_software_test/app/core/widgets/custom_elevated_button.dart';
import 'package:hero_software_test/app/core/widgets/custom_text_field.dart';

import '../../core/widgets/custom_footer.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: context.colors.primary,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ContainerLogo(
                    label:
                        'Olá, que bom ter você aqui!\nBem-vindo ao CARROCASH!'),
                const SizedBox(height: 20),
                CustomTextField(
                  label: 'Nome completo',
                  hintText: 'Nome completo',
                  fieldWidth: context.percentWidth(.9),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  label: 'CPF',
                  hintText: 'CPF',
                  fieldWidth: context.percentWidth(.9),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Data de nascimento',
                          style: context.textStyles.textMedium.copyWith(
                            color: context.colors.secondary,
                            fontSize: 17,
                          ),
                        ),
                        TextSpan(
                          text: ' *',
                          style: context.textStyles.textExtraBold.copyWith(
                            color: context.colors.blue,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomDateOfBirth(
                          hintText: 'DD',
                          fieldWidth: context.percentWidth(.25)),
                      CustomDateOfBirth(
                          hintText: 'MM',
                          fieldWidth: context.percentWidth(.25)),
                      CustomDateOfBirth(
                          hintText: 'AAAA',
                          fieldWidth: context.percentWidth(.25)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  label: 'Celular',
                  hintText: 'DDD + Celular',
                  fieldWidth: context.percentWidth(.9),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  label: 'E-mail',
                  hintText: 'E-mail',
                  fieldWidth: context.percentWidth(.9),
                ),
                const SizedBox(height: 20),
                CustomTextField.password(
                  label: 'Senha',
                  hintText: 'Mínimo 6 caracteres',
                  fontSize: 17,
                  fieldWidth: context.percentWidth(.9),
                ),
                const SizedBox(height: 20),
                CustomTextField.password(
                  label: 'Confirma senha',
                  hintText: 'Mínimo 6 caracteres',
                  fontSize: 17,
                  fieldWidth: context.percentWidth(.9),
                ),
                const SizedBox(height: 40),
                CustomElevatedButton(
                    onPressed: () => print('Clicou em próximo'),
                    buttonTitle: 'Próximo'),
                const SizedBox(height: 40),
                CustomFooter(
                    onPressed: () => print('Clicou para voltar ao login'),
                    label: 'Possui uma conta? ',
                    buttonLabel: 'ENTRAR'),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDateOfBirth extends StatelessWidget {
  final String hintText;
  final double fieldWidth;
  final String? Function(String?)? validation;
  final bool obscureText;
  final double fontSize;

  const CustomDateOfBirth({
    super.key,
    this.validation,
    this.obscureText = false,
    required this.fieldWidth,
    this.fontSize = 17,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          SizedBox(
            width: fieldWidth,
            child: TextFormField(
              cursorColor: context.colors.secondary,
              cursorHeight: 20,
              style: context.textStyles.textRegular.copyWith(
                  fontSize: fontSize,
                  color: context.colors.secondary,
                  letterSpacing: 1),
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: context.textStyles.textRegular.copyWith(
                  color: Colors.grey.shade400,
                ),
              ),
              validator: validation,
            ),
          ),
        ],
      ),
    );
  }
}
