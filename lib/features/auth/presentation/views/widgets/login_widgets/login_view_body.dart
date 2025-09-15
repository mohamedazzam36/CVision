import 'package:cvision/core/functions/helper_functions.dart';
import 'package:cvision/core/utils/app_router.dart';
import 'package:cvision/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/main_auth_views_structutre.dart';
import 'package:cvision/features/auth/presentation/views/widgets/login_widgets/login_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is EmailAndPasswordAuthSuccess || state is OtherMethodsSuccess) {
          context.go(AppRouter.kLayoutView);
        } else if (state is AuthFailure) {
          customSnackBar(context, state.errMessage);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is OtherMethodsLoading,
          child: AbsorbPointer(
            absorbing: state is AuthLoading,
            child: const MainAuthViewsStructure(child: LoginBodyWidget()),
          ),
        );
      },
    );
  }
}
