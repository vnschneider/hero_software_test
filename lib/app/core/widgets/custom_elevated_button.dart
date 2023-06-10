import 'package:flutter/material.dart';
import 'package:hero_software_test/app/core/helper/size_extensions.dart';
import 'package:hero_software_test/app/core/styles/color_style.dart';
import 'package:hero_software_test/app/core/styles/text_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonTitle;
  const CustomElevatedButton(
      {super.key, required this.onPressed, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: context.percentWidth(.9),
        height: 50,
        child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)))),
          onPressed: onPressed,
          child: Text(
            buttonTitle,
            style: context.textStyles.textButtonLabel.copyWith(
              color: context.colors.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
