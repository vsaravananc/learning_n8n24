  import 'package:flutter/material.dart';
import 'package:protfolio/themes/colors_theme.dart';
import 'package:protfolio/util/responsive_util.dart';

class DarkTheme {
  static ThemeData darkTheme(
    BuildContext context, [
    Color primaryColor = ColorsTheme.primaryColor,
  ]) {
    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: ColorsTheme.backgroundColor,
      fontFamily: 'fira',
      focusColor: ColorsTheme.secondaryColor,
      disabledColor: ColorsTheme.thirtyColor,
      primaryColorDark:ColorsTheme.primaryColorDark,
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: ResponsiveUtil.isMobile(context: context) ? 22 : 24,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: TextStyle(
          fontSize: ResponsiveUtil.isMobile(context: context) ? 16 : 20,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          fontSize: ResponsiveUtil.isMobile(context: context) ? 14 : 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
