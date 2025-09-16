import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class UploadBoxBody extends StatelessWidget {
  const UploadBoxBody({
    super.key,
    required this.onTap,
    required this.fileIcon,
  });

  final GestureTapCallback? onTap;
  final Widget? fileIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        width: context.width,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            spacing: context.height * .01,
            children: [
              Text(
                "Upload Your CV",
                style: Styles.styleRegular28(
                  context,
                ).copyWith(fontSize: 28, color: AppColors.primaryColor),
              ),
              fileIcon ?? const SizedBox(),
              Text(
                "Supported Formats: PDF, DOCX.",
                style: Styles.styleLight12(context).copyWith(color: const Color(0xff7B7575)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
