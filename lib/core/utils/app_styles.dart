import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/size_config.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle styleBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 20),
      color: AppColors.darkPrimaryColor,
      fontWeight: FontWeight.w700,
      fontFamily: 'Merriweather',
    );
  }

  static TextStyle styleBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 24),
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontFamily: 'Merriweather',
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 16),
      color: Color(0xff6F6D6D),
      fontWeight: FontWeight.w700,
      fontFamily: 'Merriweather',
    );
  }

  static TextStyle styleBold12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 12),
      color: AppColors.blackColor,
      fontWeight: FontWeight.w700,
      fontFamily: 'Merriweather',
    );
  }

  static TextStyle styleRegular28(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 28),
      color: AppColors.blackColor,
      fontWeight: FontWeight.w400,
      fontFamily: 'Merriweather',
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 12),
      color: const Color(0xff707070),
      fontWeight: FontWeight.w400,
      fontFamily: 'Merriweather',
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 16),
      color: Color(0xff6F6D6D),
      fontWeight: FontWeight.w400,
      fontFamily: 'Merriweather',
    );
  }

  static TextStyle styleLight12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 12),
      color: AppColors.blackColor,
      fontWeight: FontWeight.w300,
      fontFamily: 'Merriweather',
    );
  }

  static TextStyle styleLight16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 16),
      color: AppColors.blackColor,
      fontWeight: FontWeight.w300,
      fontFamily: 'Merriweather',
    );
  }

  static TextStyle styleMedium14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 14),
      color: AppColors.blackColor,
      fontWeight: FontWeight.w500,
      fontFamily: 'Merriweather',
    );
  }

  static TextStyle styleBlack12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 12),
      color: AppColors.secondaryColor,
      fontWeight: FontWeight.w900,
      fontFamily: 'Merriweather',
    );
  }
}

double getResponsiveText(BuildContext context, {required double fontSize}) {
  double responsiveText = getScaleFactor(context) * fontSize;
  return responsiveText.clamp(fontSize * .8, fontSize * 1.2);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width <= SizeConfig.mobileWidth) {
    return width / 400;
  } else if (width <= SizeConfig.tabletWidth) {
    return width / 800;
  } else {
    return width / 1200;
  }
}
