import 'package:cvision/core/constants/main_app_strings.dart';
import 'package:cvision/core/functions/helper_functions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_back_and_title_structure.dart';
import 'package:flutter/material.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackAndTitleStructure(
        appBarTitle: 'Help Center',
        sliver: SliverFillRemaining(
          hasScrollBody: false,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.imagesHelpCenterBackgound),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  kHelpCenter,
                  style: Styles.styleRegular16(context).copyWith(fontSize: 16),
                ),
                GestureDetector(
                  onTap: () async {
                    await sendMailTo(context, 'cvision.help@gmail.com', subject: 'Hello');
                  },
                  child: Text(
                    'cvision.help@gmail.com',
                    style:
                        Styles.styleRegular16(
                          context,
                        ).copyWith(
                          fontSize: 16,
                          color: AppColors.primaryColor,
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                          decorationColor: AppColors.primaryColor,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
