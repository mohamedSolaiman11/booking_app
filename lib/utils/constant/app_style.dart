import 'package:booking_app/utils/constant/size_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  //
  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF7567EF),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle styleRegular20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF7466EF),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF9199AC),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleMedium14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF9199AC),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle styleMedium18(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle styleRegular18(context) {
    return TextStyle(
      color: const Color(0xFF606A85),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold36(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: getResponsiveFontSize(context, fontSize: 36),
      fontWeight: FontWeight.w600,
    );
  }
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 380;
  } else if (width < SizeConfig.desktop) {
    return width / 900;
  } else {
    return width / 1920;
  }
}