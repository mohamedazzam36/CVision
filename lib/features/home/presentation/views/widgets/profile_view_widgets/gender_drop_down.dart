import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class GenderDropdown extends StatefulWidget {
  const GenderDropdown({super.key});

  @override
  State<GenderDropdown> createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isExpanded: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      value: selectedGender,
      hint: Text(
        'Select',
        style: Styles.styleRegular12(context).copyWith(fontSize: 12, color: AppColors.blackColor),
      ),
      items: [
        DropdownMenuItem(
          value: 'Mail',
          child: CustomText(
            'Mail',
            style: Styles.styleRegular12(
              context,
            ).copyWith(fontSize: 12, color: AppColors.blackColor),
          ),
        ),
        DropdownMenuItem(
          value: 'Femail',
          child: CustomText(
            'Femail',
            style: Styles.styleRegular12(
              context,
            ).copyWith(fontSize: 12, color: AppColors.blackColor),
          ),
        ),
      ],
      onChanged: (value) {
        setState(() {
          selectedGender = value;
        });
      },
    );
  }
}
