import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/functions/helper_functions.dart';
import 'package:cvision/core/utils/app_router.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/custom_auth_button.dart';
import 'package:cvision/features/settings/presentation/manager/cubit/logout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LogoutButtonSection extends StatelessWidget {
  const LogoutButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogoutCubit(),
      child: BlocConsumer<LogoutCubit, LogoutState>(
        listener: (context, state) {
          if (state is LogoutFailure) {
            customSnackBar(context, state.errMessage);
          } else if (state is LogoutSuccess) {
            context.go(AppRouter.kAuthView);
          }
        },
        builder: (context, state) {
          return Expanded(
            child: CustomAuthButton(
              text: 'Yes',
              onPressed: () {
                BlocProvider.of<LogoutCubit>(context).logout();
                context.layoutCubit.isCvUploaded = false;
                context.layoutCubit.currentIndex = 0;
              },
              isLoading: state is LogoutLoading,
            ),
          );
        },
      ),
    );
  }
}
