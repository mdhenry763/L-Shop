import 'package:flutter/material.dart';
import 'package:l_store/utils/theme/widget_themes/appbar_theme.dart';
import 'package:l_store/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:l_store/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:l_store/utils/theme/widget_themes/chip_theme.dart';
import 'package:l_store/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:l_store/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:l_store/utils/theme/widget_themes/text_field_theme.dart';
import 'package:l_store/utils/theme/widget_themes/text_theme.dart';

import '../constants/colors.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: TColors.grey,
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    textTheme: LTextTheme.lightTextTheme,
    chipTheme: LChipTheme.lightChipTheme,
    scaffoldBackgroundColor: TColors.white,
    appBarTheme: LAppBarTheme.lightAppBarTheme,
    checkboxTheme: LCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: LBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: LElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: LOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: LTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: TColors.grey,
    brightness: Brightness.dark,
    primaryColor: TColors.primary,
    textTheme: LTextTheme.darkTextTheme,
    chipTheme: LChipTheme.darkChipTheme,
    scaffoldBackgroundColor: TColors.black,
    appBarTheme: LAppBarTheme.darkAppBarTheme,
    checkboxTheme: LCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: LBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: LElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: LOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: LTextFormFieldTheme.darkInputDecorationTheme,
  );
}
