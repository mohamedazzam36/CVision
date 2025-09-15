import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

class UploadBox extends StatelessWidget {
  const UploadBox({super.key, this.fileIcon, this.onTap});

  final Widget? fileIcon;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: DottedBorder(
        color: const Color(0xff7B7575),
        strokeWidth: 2,
        dashPattern: const [24, 6],
        borderType: BorderType.RRect,
        radius: const Radius.circular(40),
        child: GestureDetector(
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
                    style: Styles.styleRegular28(context).copyWith(
                      fontSize: 28,
                      color: AppColors.primaryColor
                    ),
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
        ),
      ),
    );
  }
}
