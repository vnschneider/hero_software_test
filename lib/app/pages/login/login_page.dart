import 'package:flutter/material.dart';
import 'package:hero_software_test/app/core/helper/size_extensions.dart';
import 'package:hero_software_test/app/core/styles/color_style.dart';
import 'package:hero_software_test/app/core/styles/text_styles.dart';
import 'package:hero_software_test/app/core/widgets/container_logo.dart';
import 'package:hero_software_test/app/core/widgets/custom_elevated_button.dart';
import 'package:hero_software_test/app/core/widgets/custom_text_field.dart';
import 'package:hero_software_test/app/pages/login/components/custom_checkbox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailEC = TextEditingController();
  final _passwordEC = TextEditingController();
  bool? isChecked = false;

  //Transformando em stateful para usar o dispose nas controllers
  @override
  void dispose() {
    _emailEC.dispose();
    _passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            // leading: Icon(
            //   Icons.arrow_back,
            //   color: context.colors.secondary,
            // ),
            backgroundColor: context.colors.primary,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ContainerLogo(),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text('Acesse sua conta',
                      style: context.textStyles.textMedium.copyWith(
                          fontSize: 20,
                          color: context.colors.secondary,
                          letterSpacing: 1)),
                ),
                CustomTextField(
                  label: 'E-mail',
                  fieldWidth: context.percentWidth(.9),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  label: 'Senha',
                  fieldWidth: context.percentWidth(.9),
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lembrar-me',
                        style: context.textStyles.textRegular
                            .copyWith(fontSize: 17),
                      ),
                      CustomCheckbox(
                        boolValue: isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            print('Clicou na checkbox. Valor $newValue');
                            isChecked = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                CustomElevatedButton(
                    onPressed: () => print('Clicou em entrar'),
                    buttonTitle: 'ENTRAR'),
                const SizedBox(height: 20),
                Center(
                  child: TextButton(
                    onPressed: () => print('Clicou em esqueci minha senha'),
                    child: Text(
                      'Esqueci minha senha',
                      style: context.textStyles.textMedium.copyWith(
                          color: context.colors.secondary,
                          fontSize: 17,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const BottomLoginPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomLoginPage extends StatelessWidget {
  const BottomLoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Divider(
            thickness: 2,
            height: 10,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Novo por aqui? ',
              style: context.textStyles.textRegular.copyWith(
                color: context.colors.secondary,
                fontSize: 17,
              ),
            ),
            TextButton(
              onPressed: () => print('Clicou em cadastro'),
              child: Text(
                'CADASTRE-SE',
                style: context.textStyles.textExtraBold.copyWith(
                  color: context.colors.blue,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
