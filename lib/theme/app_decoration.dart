import 'package:flutter/material.dart';
import 'package:vyld/core/utils/szie_utils.dart';
import 'package:vyld/theme/theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillCyanA => BoxDecoration(
        color: appTheme.cyanA400,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green400,
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue50,
      );
  static BoxDecoration get fillPurpleA => BoxDecoration(
        color: appTheme.purpleA100,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.5),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => const BoxDecoration();
  static BoxDecoration get outlineCyanA => BoxDecoration(
        color: appTheme.gray900,
        border: Border.all(
          color: appTheme.cyanA400,
          width: 1.0,
          strokeAlign: strokeAlignOutside,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray900,
            spreadRadius: 2.0,
            blurRadius: 2.0,
            offset: const Offset(
              1,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray900,
          width: 1.0,
        ),
      );
  static BoxDecoration get outlineGray900 => BoxDecoration(
        color: appTheme.yellowA700,
        border: Border.all(
          color: appTheme.gray900,
          width: 1.0,
        ),
      );
  static BoxDecoration get outlineYellowA => BoxDecoration(
        color: appTheme.gray900,
        border: Border.all(
          color: appTheme.yellowA700,
          width: 1.0,
          strokeAlign: strokeAlignOutside,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray900,
            spreadRadius: 2.0,
            blurRadius: 2.0,
            offset: const Offset(
              1,
              1,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder9 => BorderRadius.circular(
        9.0,
      );

  // Custom borders
  static BorderRadius get customBorderBL12 => const BorderRadius.only(
        topLeft: Radius.circular(2.0),
        topRight: Radius.circular(12.0),
        bottomLeft: Radius.circular(12.0),
        bottomRight: Radius.circular(12.0),
      );
  static BorderRadius get customBorderTL12 => const BorderRadius.only(
        topLeft: Radius.circular(12.0),
        topRight: Radius.circular(2.0),
        bottomLeft: Radius.circular(12.0),
        bottomRight: Radius.circular(12.0),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.0,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.0,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
