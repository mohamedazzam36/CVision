import 'package:cvision/core/prefs/user_prefs.dart';
import 'package:cvision/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:cvision/features/home/presentation/manager/home_cubit/home_states.dart';
import 'package:cvision/features/home/presentation/views/widgets/layout_widgets/main_layout_structure.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/uploaded_cv_home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/utils/app_colors.dart';

class NotUploadedCvView extends StatelessWidget {
  const NotUploadedCvView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) => Scaffold(
        body: MainLayoutStructure(
          appBarTitle: 'Hello, ${UserPrefs.currentUser.name} !',
          appBarSubTitle: 'Your job journey starts from here.',
          appBarActionIcon: const Icon(
            Icons.notifications,
            color: AppColors.secondaryColor,
          ),
          sliver: const UploadedCvHomeViewBody(),
        ),
      ),
    );
  }
}
