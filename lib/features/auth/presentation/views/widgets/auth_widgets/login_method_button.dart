import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginMethodButton extends StatelessWidget {
  const LoginMethodButton({
    super.key,
    required this.onPressed,
    required this.iconPath,
    required this.text,
  });

  final void Function() onPressed;
  final String iconPath, text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xff929090)),
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 20,
            height: 20,
          ),
          const SizedBox(
            width: 8,
          ),
          CustomText(text, style: Styles.styleLight16(context).copyWith(fontSize: 16)),
        ],
      ),
    );
  }
}
