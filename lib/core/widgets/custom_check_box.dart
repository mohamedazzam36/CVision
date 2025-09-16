import 'package:cvision/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key, this.onChanged});

  final void Function(bool?)? onChanged;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isRemembered = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      side: const BorderSide(color: AppColors.primaryColor),
      checkColor: AppColors.secondaryColor,
      activeColor: AppColors.primaryColor,
      splashRadius: 0,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
      value: isRemembered,
      onChanged: (value) {
        isRemembered = !isRemembered;
        widget.onChanged;
        setState(() {});
      },
    );
  }
}
