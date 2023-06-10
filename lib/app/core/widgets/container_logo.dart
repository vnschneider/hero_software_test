import 'package:flutter/material.dart';
import 'package:hero_software_test/app/core/helper/size_extensions.dart';
import 'package:hero_software_test/app/core/styles/color_style.dart';
import 'package:hero_software_test/app/core/styles/text_styles.dart';

class ContainerLogo extends StatelessWidget {
  final String label;
  const ContainerLogo({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 40),
            width: double.infinity,
            height: context.percentHeight(.16),
            color: context.colors.primary,
            child: Image.asset('assets/images/logo.png'),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              label,
              style: context.textStyles.textTitle
                  .copyWith(color: context.colors.secondary, letterSpacing: 1),
            ),
          ),
        ],
      ),
    );
  }
}
