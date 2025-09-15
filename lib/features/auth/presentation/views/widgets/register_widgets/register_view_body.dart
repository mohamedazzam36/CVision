import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/core/functions/helper_functions.dart';
import 'package:cvision/core/utils/app_router.dart';
import 'package:cvision/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/main_auth_views_structutre.dart';
import 'package:cvision/features/auth/presentation/views/widgets/register_widgets/register_body_widget.dart';
import 'package:cvision/features/auth/presentation/views/widgets/register_widgets/registered_success_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is EmailAndPasswordAuthSuccess) {
          context.navigate(
            BlocProvider.value(
              value: context.authCubit,
              child: const RegisteredSuccessWidget(),
            ),
          );
        } else if (state is AuthFailure) {
          customSnackBar(context, state.errMessage);
        } else if (state is OtherMethodsSuccess) {
          context.go(AppRouter.kLayoutView);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is OtherMethodsLoading,
          child: AbsorbPointer(
            absorbing: state is AuthLoading,
            child: const MainAuthViewsStructure(child: RegisterBodyWidget()),
          ),
        );
      },
    );
  }
}
