import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_elevated_button.dart';
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
          backgroundColor: AppColors.secondaryColor,
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
                        ).copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              CustomElevatedButton(
                text: 'Update your CV',
                onPressed: () => context.homeCubit.pickAndUploadFile(),
                prefixIcon: const Icon(
                  Icons.upload,
                  color: AppColors.primaryColor,
                ),
                borderRadius: 12,
                height: 30,
                backgroundColor: AppColors.secondaryColor,
                textColor: AppColors.primaryColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
