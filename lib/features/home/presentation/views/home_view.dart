import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/not_uploaded_cv_view.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: const NotUploadedCvView(),
      ),
    );
  }
}
