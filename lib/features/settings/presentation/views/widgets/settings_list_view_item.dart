import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/settings/data/models/settings_model.dart';
import 'package:flutter/material.dart';

class SettingsListViewItem extends StatelessWidget {
  const SettingsListViewItem({
    super.key,
    required this.item,
    required this.onTap,
    required this.isLast,
  });

  final SettingsModel item;
  final void Function() onTap;
  final bool isLast;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onTap,
          child: Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: const Color(0xffE6ECF0),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  item.preIcon,
                  size: 16,
                  color: item.prefixColor,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              CustomText(
                alignment: Alignment.centerLeft,
                item.title,
                style: Styles.styleRegular16(context).copyWith(
                  fontSize: 16,
                  color: AppColors.blackColor,
                ),
              ),
              const Expanded(child: SizedBox()),
              IconButton(
                onPressed: onTap,
                icon: const Icon(
                  Icons.arrow_forward,
                  color: AppColors.primaryColor,
                ),
                padding: EdgeInsets.zero,
              ),
            ],
          ),
        ),
        isLast ? const SizedBox() : const Divider(),
      ],
    );
  }
}
