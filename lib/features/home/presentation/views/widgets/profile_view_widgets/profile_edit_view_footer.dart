import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/birthday_picker.dart';
import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/gender_drop_down.dart';
import 'package:flutter/material.dart';

class ProfileEditViewFooter extends StatelessWidget {
  const ProfileEditViewFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText('Gender', style: Styles.styleLight16(context).copyWith(fontSize: 16)),
              const SizedBox(
                height: 8,
              ),
              const GenderDropdown(),
            ],
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText('Birthday', style: Styles.styleLight16(context).copyWith(fontSize: 16)),
              const SizedBox(
                height: 8,
              ),
              const SizedBox(height: 56, child: BirthdayPicker()),
            ],
          ),
        ),
      ],
    );
  }
}
