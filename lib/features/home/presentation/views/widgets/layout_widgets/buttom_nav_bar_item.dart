import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/home/data/models/button_nav_bar_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtomNavBarItem extends StatelessWidget {
  const ButtomNavBarItem({super.key, required this.isSelected, required this.item});

  final bool isSelected;
  final ButtonNavBarModel item;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(44),
        color: isSelected ? AppColors.primaryColor : Colors.transparent,
      ),
      child: Row(
        spacing: 6,
        children: [
          SvgPicture.asset(
            item.iconPath,
            colorFilter: ColorFilter.mode(
              isSelected ? AppColors.secondaryColor : const Color(0xff6F6D6D),
              BlendMode.srcIn,
            ),
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: isSelected
                ? CustomText(
                    item.title,
                    style: Styles.styleRegular16(
                      context,
                    ).copyWith(fontSize: 16, color: AppColors.secondaryColor),
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}
