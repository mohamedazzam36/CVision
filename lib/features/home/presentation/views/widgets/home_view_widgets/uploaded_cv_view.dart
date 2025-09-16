import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/widgets/custom_back_and_title_structure.dart';
import 'package:cvision/core/widgets/custom_elevated_button.dart';
import 'package:cvision/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:cvision/features/home/presentation/manager/home_cubit/home_states.dart';
import 'package:cvision/features/home/presentation/views/home_view/loading_view.dart';
import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/upload_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

class UploadedCvView extends StatelessWidget {
  const UploadedCvView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) => Scaffold(
        body: CustomBackAndTitleStructure(
          appBarTitle: '',
          sliver: SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Text(
                  "Start",
                  style: Styles.styleBold20(context).copyWith(
                    fontSize: 40,
                  ),
                ),
                Text(
                  "Your Journey",
                  style: Styles.styleBold20(context).copyWith(
                    fontSize: 40,
                  ),
                ),
                const SizedBox(
                  height: 56,
                ),
                UploadBox(
                  isDotted: false,
                  fileIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 36),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(Assets.imagesPdfIcon),
                        Text(
                          "my_cv.pdf",
                          style: Styles.styleRegular12(context).copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    spacing: 20,
                    children: [
                      Expanded(
                        child: CustomElevatedButton(
                          text: 'Continue',
                          onPressed: () => context.navigate(const ProgressPage()),
                          height: 35,
                        ),
                      ),
                      Expanded(
                        child: CustomElevatedButton(
                          text: 'Reupload',
                          onPressed: () => context.homeCubit.rePickAndUploadFile(),
                          height: 35,
                          textColor: AppColors.primaryColor,
                          backgroundColor: AppColors.lightThemePrimaryColor,
                        ),
                      ),
                    ],
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
