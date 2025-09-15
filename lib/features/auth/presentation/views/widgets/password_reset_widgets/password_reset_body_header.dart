import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';

class PasswordResetBodyHeader extends StatelessWidget {
  const PasswordResetBodyHeader({
    super.key,
    required this.title,
    required this.subTitle,
    this.secSubTitle,
  });

  final String title, subTitle;
  final String? secSubTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(title, style: Styles.styleRegular28(context).copyWith(fontSize: 28)),
        CustomText(subTitle, style: Styles.styleLight12(context).copyWith(fontSize: 12)),
        secSubTitle != null
            ? CustomText(secSubTitle!, style: Styles.styleLight12(context).copyWith(fontSize: 12))
            : const SizedBox(),
      ],
    );
  }
}
