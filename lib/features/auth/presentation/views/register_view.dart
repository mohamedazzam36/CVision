import 'package:cvision/features/auth/presentation/views/widgets/password_reset_widgets/email_check_body.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EmailCheckBody(),
    );
  }
}
