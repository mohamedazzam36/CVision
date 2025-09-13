import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

class ArrowBackAppbar extends StatelessWidget {
  const ArrowBackAppbar({super.key, this.title});

  final String? title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: AppColors.secondaryColor,
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Text(
          title ?? "",
          style: Styles.styleBold20(context),
        ),
        const Spacer(
          flex: 1,
        ),
      ],
    );
  }
}
