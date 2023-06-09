import 'package:flutter/material.dart';
import 'package:hero_software_test/app/core/helper/size_extensions.dart';
import 'package:hero_software_test/app/core/styles/color_style.dart';

class ContainerLogo extends StatelessWidget {
  const ContainerLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(bottom: 40),
        width: double.infinity,
        height: context.percentHeight(.16),
        color: context.colors.primary,
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
