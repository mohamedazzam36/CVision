import 'package:cvision/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:cvision/features/home/presentation/manager/home_cubit/home_states.dart';
import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/not_uploaded_cv_view.dart';
import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/uploaded_cv_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/app_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) => Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.lightPrimaryColor,
              AppColors.primaryColor,
              AppColors.darkPrimaryColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: state is UploadedCvSuccess ? const UploadedCvView() : const NotUploadedCvView() ,
      ),
    ),
    );
  }
}