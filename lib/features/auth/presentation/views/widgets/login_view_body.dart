import 'package:cvision/features/auth/presentation/views/widgets/custom_auth_app_bar.dart';
import 'package:cvision/features/auth/presentation/views/widgets/custom_auth_background_container.dart';
import 'package:cvision/features/auth/presentation/views/widgets/login_body_widget.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomAuthBackgroundContainer(
      child: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: EdgeInsetsGeometry.only(top: 16),
            sliver: CustomAuthAppBar(),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                LoginBodyWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
