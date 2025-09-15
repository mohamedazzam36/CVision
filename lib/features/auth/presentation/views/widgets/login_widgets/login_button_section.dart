import 'package:cvision/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/custom_auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButtonSection extends StatelessWidget {
  const LoginButtonSection({
    super.key,
    required this.formKey,
    required this.onSubmitted,
  });

  final GlobalKey<FormState> formKey;
  final VoidCallback onSubmitted;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return CustomAuthButton(
          isLoading: state is AuthLoading,
          text: 'Login',
          onPressed: () {
            if (formKey.currentState!.validate()) {
              onSubmitted();
            }
          },
        );
      },
    );
  }
}
