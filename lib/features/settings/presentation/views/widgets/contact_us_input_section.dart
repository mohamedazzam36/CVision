import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/settings/presentation/views/widgets/contact_us_text_field.dart';
import 'package:flutter/material.dart';

class ContactUsInputSection extends StatelessWidget {
  const ContactUsInputSection({
    super.key,
    required this.onEmailSaved,
    required this.onMessageSaved,
  });

  final void Function(String?) onEmailSaved, onMessageSaved;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          'Email',
          style: Styles.styleLight16(
            context,
          ).copyWith(fontSize: 16, color: AppColors.darkPrimaryColor),
        ),
        const SizedBox(
          height: 8,
        ),
        ContactUsTextField(
          hintText: 'Enter the email',
          initialValue: 'cvision.help@gmail.com',
          onSaved: onEmailSaved,
          canEdit: false,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomText(
          'Message',
          style: Styles.styleLight16(
            context,
          ).copyWith(fontSize: 16, color: AppColors.darkPrimaryColor),
        ),
        const SizedBox(
          height: 8,
        ),
        ContactUsTextField(
          hintText: 'Your message...',
          maxLines: 7,
          onSaved: onMessageSaved,
          hintStyle: Styles.styleRegular16(
            context,
          ).copyWith(fontSize: 16, color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
