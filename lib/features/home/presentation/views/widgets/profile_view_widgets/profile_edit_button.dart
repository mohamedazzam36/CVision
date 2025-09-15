import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/profile_edit_view_body.dart';
import 'package:flutter/material.dart';

class ProfileEditButton extends StatelessWidget {
  const ProfileEditButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 164,
      height: 40,
      child: ElevatedButton(
        onPressed: () {
          context.navigate(const ProfileEditViewBody());
        },
        style: ElevatedButton.styleFrom(
          elevation: 5,
          backgroundColor: AppColors.secondaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.edit,
              color: AppColors.blackColor,
              size: 16,
            ),
            const SizedBox(
              width: 4,
            ),
            CustomText('Edit profile', style: Styles.styleLight12(context).copyWith(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
