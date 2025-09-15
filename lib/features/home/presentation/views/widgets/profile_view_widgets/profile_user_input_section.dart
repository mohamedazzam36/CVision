import 'package:cvision/core/prefs/user_prefs.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/custom_auth_button.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/custom_auth_text_field_section.dart';
import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/profile_edit_view_footer.dart';
import 'package:flutter/material.dart';

class ProfileUserInputSection extends StatelessWidget {
  const ProfileUserInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffffffff).withAlpha(180),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          CustomAuthTextFieldSection(
            title: 'Name',
            hintText: 'Change your name ',
            initialValue: UserPrefs.currentUser.name,
            prefixIcon: const Icon(Icons.person),
          ),
          const SizedBox(
            height: 12,
          ),
          CustomAuthTextFieldSection(
            title: 'Email',
            hintText: 'Change your email',
            initialValue: UserPrefs.currentUser.email,
            prefixIcon: const Icon(Icons.mail),
          ),
          const SizedBox(
            height: 12,
          ),
          const ProfileEditViewFooter(),
          const SizedBox(
            height: 20,
          ),
          CustomAuthButton(text: 'Update', onPressed: () {}),
        ],
      ),
    );
  }
}
