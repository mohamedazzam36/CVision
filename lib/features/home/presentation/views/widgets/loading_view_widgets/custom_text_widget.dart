import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../core/utils/app_styles.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text,
      style: Styles.styleBold20(context).copyWith(
        fontSize: 20,
        color: Color(0xff6F6D6D)
      ),
    );
  }
}
