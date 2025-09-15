import 'package:cvision/core/prefs/user_prefs.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/profile_edit_button.dart';
import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/profile_pic_widget.dart';
import 'package:flutter/material.dart';

class ProfileHeaderSection extends StatelessWidget {
  const ProfileHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfilePicWidget(
          radius: 60,
        ),
        const SizedBox(
          height: 4,
        ),
        CustomText(
          UserPrefs.currentUser.name,
          style: Styles.styleBold24(context).copyWith(fontSize: 24),
        ),
        const SizedBox(
          height: 4,
        ),
        CustomText(
          'Specialization not set',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: const Color(0xffFFFFFF).withAlpha(150),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const ProfileEditButton(),
      ],
    );
  }
}
