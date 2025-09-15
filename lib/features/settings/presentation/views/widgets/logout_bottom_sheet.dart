import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/custom_auth_button.dart';
import 'package:cvision/features/settings/presentation/views/widgets/logout_button_section.dart';
import 'package:flutter/material.dart';

class LogoutBottomSheet extends StatelessWidget {
  const LogoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(
              endIndent: 150,
              indent: 150,
              color: Color(0xff929090),
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: CustomText(
                'Logout',
                style: Styles.styleBold20(
                  context,
                ).copyWith(fontSize: 20, color: AppColors.blackColor),
              ),
            ),
            const Divider(
              color: Color(0xff929090),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 32),
              child: CustomText(
                'Are you sure you want to log out ?',
                style: Styles.styleLight16(context).copyWith(fontSize: 16),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CustomAuthButton(
                    text: 'Cancel',
                    onPressed: () => Navigator.pop(context),
                    backgroundColor: AppColors.secondaryColor,
                    textColor: AppColors.lightThemePrimaryColor,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                const LogoutButtonSection(),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
