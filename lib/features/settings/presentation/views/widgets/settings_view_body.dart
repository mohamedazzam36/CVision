import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/features/settings/presentation/views/widgets/custom_settings_list_view.dart';
import 'package:cvision/core/widgets/custom_back_and_title_structure.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackAndTitleStructure(
      appBarTitle: 'Settings',
      sliver: SliverToBoxAdapter(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xffE6E8EB)),
            boxShadow: [
              BoxShadow(
                color: AppColors.blackColor.withAlpha(150),
                blurRadius: 5,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: const CustomSettingsListView(),
        ),
      ),
    );
  }
}
