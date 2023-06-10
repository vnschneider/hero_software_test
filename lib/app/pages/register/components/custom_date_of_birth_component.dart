import 'package:flutter/material.dart';
import 'package:hero_software_test/app/core/styles/color_style.dart';
import 'package:hero_software_test/app/core/styles/text_styles.dart';

class CustomDateOfBirthComponent extends StatelessWidget {
  final String hintText;
  final double fieldWidth;
  final String? Function(String?)? validation;
  final bool obscureText;
  final double fontSize;

  const CustomDateOfBirthComponent({
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
              keyboardType: TextInputType.datetime,
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