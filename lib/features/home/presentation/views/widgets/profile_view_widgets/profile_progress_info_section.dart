import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/profile_progress_info_item.dart';
import 'package:flutter/material.dart';

class ProfileProgressInfoSection extends StatelessWidget {
  const ProfileProgressInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool cvLoaded = context.layoutCubit.isCvUploaded;

    return Row(
      children: [
        Expanded(
          child: ProfileProgressInfoItem(
            title: 'Score',
            subTitle: 'CV',
            progress: cvLoaded ? '72%' : '0',
          ),
        ),
        Container(
          height: 64,
          width: 1,
          color: AppColors.blackColor,
        ),
        Expanded(
          child: ProfileProgressInfoItem(
            title: 'Skill',
            subTitle: 'Gained',
            progress: cvLoaded ? '4' : '0',
          ),
        ),
        Container(
          height: 64,
          width: 1,
          color: AppColors.blackColor,
        ),
        Expanded(
          child: ProfileProgressInfoItem(
            title: 'Courses',
            subTitle: 'Completed',
            progress: cvLoaded ? '2' : '0',
          ),
        ),
      ],
    );
  }
}
