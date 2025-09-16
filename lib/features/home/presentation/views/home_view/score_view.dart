import 'package:cvision/core/widgets/custom_back_and_title_structure.dart';
import 'package:cvision/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:cvision/features/home/presentation/manager/home_cubit/home_states.dart';
import 'package:cvision/features/home/presentation/views/widgets/score_view_widgets/specialization_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/app_colors.dart';
import '../widgets/score_view_widgets/circle_widget.dart';

class ScoreView extends StatelessWidget {
  const ScoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeStates>(
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is GetSkillsLoadingState,
            child: CustomBackAndTitleStructure(
              appBarTitle: '',
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    Text(
                      "Your CV Analysis Result",
                      style: Styles.styleBold24(context).copyWith(
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CircularScore(
                      progressColor: AppColors.primaryColor,
                      lineWidth: 13,
                      percent: .72,
                      radius: 80,
                      backgroundColor: AppColors.lightThemePrimaryColor,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'We’ve analyzed your CV, uncovered your strengths and areas to improve, and recommended the best specialization to boost your career journey!',
                      style: Styles.styleRegular16(context).copyWith(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    const SpecializationBox(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
