import 'package:cvision/core/extensions/access_cubits_extensions.dart';
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
          context.layoutCubit.isCvUploaded ? 'Flutter Developer' : 'Specialization not set',
          style: Styles.styleBlack12(
            context,
          ).copyWith(fontSize: 16, color: const Color(0xff6F6D6D)),
        ),
        const SizedBox(
          height: 16,
        ),
        const ProfileEditButton(),
      ],
    );
  }
}
