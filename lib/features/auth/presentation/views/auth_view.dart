import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/auth_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: const Scaffold(
        backgroundColor: AppColors.secondaryColor,
        body: AuthViewBody(),
      ),
    );
  }
}
