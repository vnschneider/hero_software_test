import 'package:flutter/material.dart';
import 'package:hero_software_test/app/core/styles/color_style.dart';
import 'package:hero_software_test/app/core/styles/text_styles.dart';

class CustomFooter extends StatelessWidget {
  final String label;
  final String buttonLabel;
  final VoidCallback onPressed;
  const CustomFooter({
    Key? key,
    required this.label,
    required this.buttonLabel, required this.onPressed,
  }) : super(key: key);

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
              label,
              style: context.textStyles.textRegular.copyWith(
                color: context.colors.secondary,
                fontSize: 17,
              ),
            ),
            TextButton(
              onPressed: onPressed,
              child: Text(
                buttonLabel,
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
