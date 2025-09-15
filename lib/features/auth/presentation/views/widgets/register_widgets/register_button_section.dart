import 'package:cvision/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/custom_auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterButtonSection extends StatelessWidget {
  const RegisterButtonSection({
    super.key,
    required this.isAgreed,
    required this.formKey,
    required this.onSubmitted,
  });

  final bool isAgreed;
  final GlobalKey<FormState> formKey;
  final VoidCallback onSubmitted;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return CustomAuthButton(
          isDisabled: !isAgreed,
          isLoading: state is AuthLoading,
          text: 'Create Account',
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
