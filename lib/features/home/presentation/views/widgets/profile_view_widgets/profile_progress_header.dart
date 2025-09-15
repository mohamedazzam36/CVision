import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart' show Styles;
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart'
    show Icons, Row, StatelessWidget, BuildContext, Widget, Spacer, Icon;
import 'package:flutter/widgets.dart';

class ProfileProgressHeader extends StatelessWidget {
  const ProfileProgressHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool cvLoaded = context.layoutCubit.isCvUploaded;
    return Row(
      children: [
        CustomText(
          'Your Progress',
          style: Styles.styleBold20(
            context,
          ).copyWith(fontSize: 20, color: AppColors.blackColor),
        ),
        const Spacer(),
        cvLoaded
            ? const SizedBox()
            : const Icon(
                Icons.upload,
                color: AppColors.lightThemePrimaryColor,
                size: 16,
              ),
        cvLoaded
            ? const SizedBox()
            : CustomText(
                'Upload CV',
                style: Styles.styleRegular12(
                  context,
                ).copyWith(fontSize: 12, color: AppColors.lightThemePrimaryColor),
              ),
      ],
    );
  }
}
