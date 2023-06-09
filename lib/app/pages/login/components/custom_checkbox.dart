import 'package:flutter/material.dart';
import 'package:hero_software_test/app/core/styles/color_style.dart';

class CustomCheckbox extends StatelessWidget {
  final bool? boolValue;
  final Function(bool?)? onChanged;
  const CustomCheckbox({super.key, this.boolValue, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      side: BorderSide(
          color: context.colors.secondary,
          width: 1,
          strokeAlign: BorderSide.strokeAlignInside),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
      activeColor: context.colors.blue,
      value: boolValue,
      onChanged: onChanged,
    );
  }
}
