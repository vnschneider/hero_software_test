import 'package:flutter/material.dart';
import 'package:hero_software_test/app/core/styles/color_style.dart';
import 'package:hero_software_test/app/core/styles/text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String hintText;
  final double fieldWidth;
  final String? Function(String?)? validation;
  final bool obscureText;
  final double fontSize;

  const CustomTextField({
    super.key,
    this.validation,
    this.obscureText = false,
    this.label,
    required this.fieldWidth,
    this.fontSize = 17,
    required this.hintText,
  });
  const CustomTextField.password({
    super.key,
    this.validation,
    this.obscureText = true,
    required this.label,
    required this.fieldWidth,
    this.fontSize = 25,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: label,
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
                hintStyle: context.textStyles.textRegular
                    .copyWith(color: Colors.grey.shade400),
              ),
              validator: validation,
            ),
          ),
        ],
      ),
    );
  }
}
