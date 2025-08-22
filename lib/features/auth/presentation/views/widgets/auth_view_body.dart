import 'package:cvision/features/auth/presentation/views/widgets/auth_body_widget.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_header_widget.dart';
import 'package:flutter/material.dart';

class AuthViewBody extends StatelessWidget {
  const AuthViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AuthHeaderWidget(),
          SizedBox(height: 64),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: AuthBodyWidget(),
          ),
        ],
      ),
    );
  }
}
