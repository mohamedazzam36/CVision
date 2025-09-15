import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/core/utils/app_router.dart';
import 'package:cvision/features/auth/presentation/views/login_view.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/main_auth_views_structutre.dart';
import 'package:cvision/features/auth/presentation/views/widgets/register_widgets/accont_created_successful_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisteredSuccessWidget extends StatelessWidget {
  const RegisteredSuccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainAuthViewsStructure(
        child: AccontCreatedSuccessfulBody(
          onPressed: () => context.pushAbove(
            AppRouter.kAuthView,
            BlocProvider.value(
              value: context.authCubit,
              child: const LoginView(),
            ),
          ),
          title: 'Sucessful',
          subTitle: 'Congratulations! Your account has  been',
          secSubTitle: 'created successfully. Click continue to login',
        ),
      ),
    );
  }
}
