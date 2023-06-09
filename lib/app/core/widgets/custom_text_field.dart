import 'package:flutter/material.dart';
import 'package:hero_software_test/app/core/helper/size_extensions.dart';
import 'package:hero_software_test/app/core/styles/color_style.dart';
import 'package:hero_software_test/app/core/styles/text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String? Function(String?)? validation;

  const CustomTextField({super.key, this.validation, required this.label});

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
            width: context.percentWidth(.9),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: label,
              ),
              validator: validation,
            ),
          ),
        ],
      ),
    );
  }
}
