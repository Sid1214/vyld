import 'package:flutter/material.dart';
import 'package:vyld/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumNewSosisPurpleA100 =>
      theme.textTheme.bodyMedium!.newSosis.copyWith(
        color: appTheme.purpleA100,
      );
  // Label text style
  static get labelMediumGilroyBlack900 =>
      theme.textTheme.labelMedium!.gilroy.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeGray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w300,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get americanTypewriter {
    return copyWith(
      fontFamily: 'American Typewriter',
    );
  }

  TextStyle get pilatExtended {
    return copyWith(
      fontFamily: 'Pilat Extended',
    );
  }

  TextStyle get newSosis {
    return copyWith(
      fontFamily: 'New Sosis',
    );
  }

  TextStyle get gilroy {
    return copyWith(
      fontFamily: 'Gilroy',
    );
  }

  TextStyle get niceTango {
    return copyWith(
      fontFamily: 'Nice Tango',
    );
  }
}
