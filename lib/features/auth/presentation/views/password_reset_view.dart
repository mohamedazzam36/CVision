import 'package:cvision/features/auth/presentation/views/widgets/password_reset_widgets/password_reset_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordResetView extends StatelessWidget {
  const PasswordResetView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PasswordResetViewBody(),
    );
  }
}
