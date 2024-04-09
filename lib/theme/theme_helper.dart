import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            width: 1,
          ),
          shape: RoundedRectangleBorder(),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.secondaryContainer.withOpacity(1),
          fontSize: 16.fSize,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.secondaryContainer.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.secondaryContainer.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 12.fSize,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.w900,
        ),
        titleLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 20.fSize,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.w800,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 16.fSize,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.w800,
        ),
        titleSmall: TextStyle(
          color: colorScheme.errorContainer,
          fontSize: 14.fSize,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    primary: Color(0XFF7D23E0),
    secondaryContainer: Color(0X144C4452),
    errorContainer: Color(0XFF525251),
    onPrimary: Color(0X75FFFFFF),
    onSecondaryContainer: Color(0XFF0C0C0C),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amberA400 => Color(0XFFFFC600);
// Gray
  Color get gray200 => Color(0XFFEDEDED);
  Color get gray50 => Color(0XFFFBFBFB);
  Color get gray5001 => Color(0XFFFAFAFA);
  Color get gray5002 => Color(0XFFFFF6FF);
  Color get gray900 => Color(0XFF201926);
// Purple
  Color get purple900 => Color(0XFF480087);
// Red
  Color get red600 => Color(0XFFE13B30);
}
