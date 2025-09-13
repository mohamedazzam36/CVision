import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

class HeaderOfHomeView extends StatelessWidget {
  const HeaderOfHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, Name ! ",
                style: Styles.styleBold20(context).copyWith(
                  fontSize: 20,
                ),
              ),
              Text(
                "your job journey starts from here.",
                style: Styles.styleLight12(
                  context,
                ).copyWith(fontSize: 12, color: AppColors.secondaryColor),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notification_add_outlined,
              color: AppColors.secondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
