import 'package:cvision/core/widgets/custom_back_and_title_structure.dart';
import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/profile_edit_view_header.dart';
import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/profile_user_input_section.dart';
import 'package:flutter/material.dart';

class ProfileEditViewBody extends StatelessWidget {
  const ProfileEditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomBackAndTitleStructure(
        appBarTitle: '',
        sliver: SliverToBoxAdapter(
          child: Column(
            children: [
              ProfileEditViewHeader(),
              SizedBox(
                height: 48,
              ),
              ProfileUserInputSection(),
            ],
          ),
        ),
      ),
    );
  }
}
