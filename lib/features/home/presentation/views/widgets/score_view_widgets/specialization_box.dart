import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/widgets/custom_elevated_button.dart';
import 'package:cvision/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:cvision/features/home/presentation/manager/home_cubit/home_states.dart';
import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/skills_overview_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

class SpecializationBox extends StatelessWidget {
  const SpecializationBox({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeStates>(
      listener: (context, state) {
        if (state is GetSkillsSuccessState) {
          context.navigate(const SkillsOverviewView());
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 22,
              ),
              child: Column(
                spacing: 8,
                children: [
                  Text(
                    "Recommended Specialization",
                    style: Styles.styleRegular16(context).copyWith(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Flutter Developer",
                    style: Styles.styleBold24(context).copyWith(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "We’ll use this field to customize your journey",
                    style: Styles.styleRegular12(
                      context,
                    ).copyWith(fontSize: 12, color: const Color(0xff6A6868)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomElevatedButton(
                    text: 'Continue with this Specialization',
                    onPressed: () => context.homeCubit.getSkills(),
                    height: 35,
                    elevation: 0,
                  ),
                  CustomElevatedButton(
                    text: 'Change Specialization',
                    onPressed: () => () {},
                    height: 35,
                    backgroundColor: AppColors.secondaryColor,
                    textColor: AppColors.blackColor.withAlpha(150),
                    elevation: 0,
                    borderColor: AppColors.blackColor,
                    prefixIcon: SvgPicture.asset(Assets.imagesEditIcon),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
