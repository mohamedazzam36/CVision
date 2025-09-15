import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomLayoutAppBar extends StatelessWidget {
  const CustomLayoutAppBar({
    super.key,
    required this.appBarTitle,
    this.appBarSubTitle,
    this.centerTitle = false,
    this.appBarActionIcon,
    this.onPressed,
    this.title,
  });

  final String appBarTitle;
  final String? appBarSubTitle;
  final bool centerTitle;
  final Widget? title, appBarActionIcon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      floating: true,
      collapsedHeight: 75,
      centerTitle: centerTitle,
      actions: [
        appBarActionIcon != null
            ? IconButton(onPressed: onPressed ?? () {}, icon: appBarActionIcon!)
            : const SizedBox(),
      ],
      title:
          title ??
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(appBarTitle, style: Styles.styleBold20(context).copyWith(fontSize: 20)),
              appBarSubTitle == null
                  ? const SizedBox()
                  : CustomText(
                      appBarSubTitle!,
                      style: Styles.styleRegular12(
                        context,
                      ).copyWith(fontSize: 12,),
                    ),
            ],
          ),
    );
  }
}
