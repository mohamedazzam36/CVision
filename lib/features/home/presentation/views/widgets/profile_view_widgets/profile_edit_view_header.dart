import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/profile_pic_widget.dart';
import 'package:flutter/material.dart';

class ProfileEditViewHeader extends StatelessWidget {
  const ProfileEditViewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          const ProfilePicWidget(radius: 75),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              width: 24,
              height: 24,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.secondaryColor,
              ),
              child: const Icon(
                Icons.edit,
                color: AppColors.blackColor,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
