import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/main_cv_details_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonalizedAdviceSection extends StatelessWidget {
  const PersonalizedAdviceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCvDetailsCard(
      opasity: 195,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4,
        children: [
          Row(
            spacing: 4,
            children: [
              SvgPicture.asset(Assets.imagesPersonalizedAdviceIcon),
              CustomText(
                'Personalized Advice',
                style: Styles.styleBlack12(
                  context,
                ).copyWith(fontSize: 16, color: AppColors.lightThemePrimaryColor),
              ),
            ],
          ),
          CustomText(
            'Keep updating your CV every month with any new skill or project.',
            style: Styles.styleLight12(context).copyWith(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
