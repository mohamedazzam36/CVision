import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/main_cv_details_card.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/main_cv_details_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UploadedCvProfileFooter extends StatelessWidget {
  const UploadedCvProfileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        const MainCvDetailsHeader(iconPath: Assets.imagesCvFileIcon, title: 'CV File'),
        MainCvDetailsCard(
          opasity: 180,
          child: Column(
            spacing: 8,
            children: [
              Row(
                spacing: 4,
                children: [
                  SvgPicture.asset(Assets.imagesPdfIcon),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      CustomText(
                        'my_cv.pdf',
                        style: Styles.styleBold12(context).copyWith(fontSize: 12),
                      ),
                      CustomText(
                        'Uploaded: 13 Sept, 2025',
                        style: Styles.styleRegular12(
                          context,
                        ).copyWith(fontSize: 12, color: AppColors.blackColor),
                      ),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: AppColors.lightThemePrimaryColor),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 1,
                  children: [
                    const Icon(
                      Icons.upload,
                      color: AppColors.lightThemePrimaryColor,
                    ),
                    CustomText(
                      'Update your CV',
                      style: Styles.styleBold12(
                        context,
                      ).copyWith(fontSize: 12, color: AppColors.lightThemePrimaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
