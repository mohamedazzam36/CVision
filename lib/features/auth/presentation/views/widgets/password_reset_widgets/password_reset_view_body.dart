import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/core/functions/helper_functions.dart';
import 'package:cvision/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/main_auth_views_structutre.dart';
import 'package:cvision/features/auth/presentation/views/widgets/password_reset_widgets/forgot_password_body.dart';
import 'package:cvision/features/auth/presentation/views/widgets/password_reset_widgets/password_updated_success_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordResetViewBody extends StatelessWidget {
  const PasswordResetViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is UpdatePasswordFailure) {
          customSnackBar(context, state.errMessage);
        } else if (state is UpdatePasswordSuccess) {
          context.navigate(const PasswordUpdatedSuccessWidget());
        }
      },
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AuthLoading,
          child: const MainAuthViewsStructure(child: ForgotPasswordBody()),
        );
      },
    );
  }
}
