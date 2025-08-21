import 'package:cvision/features/auth/presentation/views/widgets/auth_header_widget.dart';
import 'package:flutter/material.dart';

class AuthViewBody extends StatelessWidget {
  const AuthViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              AuthHeaderWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
