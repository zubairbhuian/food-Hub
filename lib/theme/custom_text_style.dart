import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge19 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 19.fSize,
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.2),
      );
  static get bodyLargeBluegray800a9 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray800A9,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
        fontSize: 17.fSize,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 17.fSize,
      );
  static get bodyLargeOnPrimary18 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 18.fSize,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeTTCommonsPrimary =>
      theme.textTheme.bodyLarge!.tTCommons.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get bodyLargeWhiteA70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack90015 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumBluegray300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumBluegray40003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40003,
        fontSize: 15.fSize,
      );
  static get bodyMediumDeeporangeA200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.deepOrangeA200,
        fontSize: 13.fSize,
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumErrorContainer_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumErrorContainer_2 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumGray40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40001,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumGray40002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40002,
        fontSize: 13.fSize,
      );
  static get bodyMediumGreen400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.green400,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumHelveticaNeueBlack900 =>
      theme.textTheme.bodyMedium!.helveticaNeue.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumHelveticaNeueBluegray40004 =>
      theme.textTheme.bodyMedium!.helveticaNeue.copyWith(
        color: appTheme.blueGray40004,
        fontSize: 13.fSize,
      );
  static get bodyMediumHelveticaNeueBluegray40006 =>
      theme.textTheme.bodyMedium!.helveticaNeue.copyWith(
        color: appTheme.blueGray40006,
        fontSize: 15.fSize,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
      );
  static get bodyMediumOnPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumPrimary13 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
      );
  static get bodyMediumPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumWhiteA70001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 15.fSize,
      );
  static get bodySmall8 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 8.fSize,
      );
  static get bodySmall8_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 8.fSize,
      );
  static get bodySmallBluegray40002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40002,
      );
  static get bodySmallGray40002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40002,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 11.fSize,
      );
  static get bodySmallGreen40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green40001,
      );
  static get bodySmallHelveticaNeueBluegray40004 =>
      theme.textTheme.bodySmall!.helveticaNeue.copyWith(
        color: appTheme.blueGray40004,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallTTCommonsPrimary =>
      theme.textTheme.bodySmall!.tTCommons.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 11.fSize,
      );
  static get bodySmallTTCommonsPrimary9 =>
      theme.textTheme.bodySmall!.tTCommons.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 9.fSize,
      );
  static get bodySmallWhiteA70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  // Display text style
  static get displayLargeOnPrimary => theme.textTheme.displayLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 53.fSize,
      );
  static get displayLargeOnPrimary54 => theme.textTheme.displayLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 54.fSize,
      );
  static get displayLargeOnPrimary_1 => theme.textTheme.displayLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get displayMediumPhosphateWhiteA70001 =>
      theme.textTheme.displayMedium!.phosphate.copyWith(
        color: appTheme.whiteA70001.withOpacity(0.56),
        fontSize: 40.fSize,
        fontWeight: FontWeight.w400,
      );
  static get displayMediumPhosphateWhiteA70001Regular =>
      theme.textTheme.displayMedium!.phosphate.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 40.fSize,
        fontWeight: FontWeight.w400,
      );
  static get displayMediumPrimaryContainer =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get displaySmallOnPrimary => theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 39.fSize,
      );
  static get displaySmallTTCommonsPrimary =>
      theme.textTheme.displaySmall!.tTCommons.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 35.fSize,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineLargeBlack900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get headlineLargeBluegray900 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 30.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumPrimary => theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 27.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallSofiaProWhiteA70001 =>
      theme.textTheme.headlineSmall!.sofiaPro.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallTTCommonsOnPrimary =>
      theme.textTheme.headlineSmall!.tTCommons.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallTTCommonsPrimary =>
      theme.textTheme.headlineSmall!.tTCommons.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 24.fSize,
      );
  // Label text style
  static get labelMediumSofiaPro =>
      theme.textTheme.labelMedium!.sofiaPro.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSofiaProGray700 =>
      theme.textTheme.labelMedium!.sofiaPro.copyWith(
        color: appTheme.gray700,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumSofiaProSemiBold =>
      theme.textTheme.labelMedium!.sofiaPro.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSofiaProWhiteA70001 =>
      theme.textTheme.labelMedium!.sofiaPro.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMedium_1 => theme.textTheme.labelMedium!;
  // Sofia text style
  static get sofiaProGray500 => TextStyle(
        color: appTheme.gray500,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).sofiaPro;
  // Title text style
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeTTCommonsOnPrimary =>
      theme.textTheme.titleLarge!.tTCommons.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleLargeTTCommonsPrimary =>
      theme.textTheme.titleLarge!.tTCommons.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumErrorContainerMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 19.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumOnPrimary_2 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary16 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumPrimaryMedium => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimary_2 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get titleSmallBlack900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnError => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 14.fSize,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get helveticaNeue {
    return copyWith(
      fontFamily: 'Helvetica Neue',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get tTCommons {
    return copyWith(
      fontFamily: 'TT Commons',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get sofiaPro {
    return copyWith(
      fontFamily: 'Sofia Pro',
    );
  }

  TextStyle get phosphate {
    return copyWith(
      fontFamily: 'Phosphate',
    );
  }
}
