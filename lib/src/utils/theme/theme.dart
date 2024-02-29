import 'package:flutter/material.dart';
import 'package:full_app/src/utils/theme/widgets_themes/elevated_button_theme.dart';
import 'package:full_app/src/utils/theme/widgets_themes/outlined_button_theme.dart';
import 'package:full_app/src/utils/theme/widgets_themes/text_field_theme.dart';
import 'package:full_app/src/utils/theme/widgets_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: AppTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonThem,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonThem,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonThem,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonThem,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
