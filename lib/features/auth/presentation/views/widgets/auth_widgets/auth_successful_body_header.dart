import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';

class AuthSuccessfulBodyHeader extends StatelessWidget {
  const AuthSuccessfulBodyHeader({
    super.key,
    required this.title,
    required this.subTitle,
    this.secSubTitle,
    this.thirdSubTitle,
  });

  final String title, subTitle;
  final String? secSubTitle, thirdSubTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(title, style: Styles.styleRegular28(context).copyWith(fontSize: 28)),
        CustomText(subTitle, style: Styles.styleLight12(context).copyWith(fontSize: 12)),
        secSubTitle == null
            ? const SizedBox()
            : CustomText(secSubTitle!, style: Styles.styleLight12(context).copyWith(fontSize: 12)),
        thirdSubTitle == null
            ? const SizedBox()
            : CustomText(
                thirdSubTitle!,
                style: Styles.styleLight12(context).copyWith(fontSize: 12),
              ),
      ],
    );
  }
}
