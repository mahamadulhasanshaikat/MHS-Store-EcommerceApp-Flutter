import 'package:flutter/material.dart';
import 'package:mhs_store/utils/constants/colors.dart';
import 'package:mhs_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:mhs_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:mhs_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:mhs_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:mhs_store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:mhs_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:mhs_store/utils/theme/custom_themes/text_theme.dart';

import 'custom_themes/elevated_button_theme.dart';

class MhsAppTheme {
  MhsAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: MhsColors.grey,
    brightness: Brightness.light,
    primaryColor: MhsColors.primary,
    textTheme: MhsTextTheme.lightTextTheme,
    chipTheme: MhsChipTheme.lightChipTheme,
    scaffoldBackgroundColor: MhsColors.white,
    appBarTheme: MhsAppBarTheme.lightAppBarTheme,
    checkboxTheme: MhsCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: MhsBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: MhsElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MhsOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MhsTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: MhsColors.grey,
    brightness: Brightness.dark,
    primaryColor: MhsColors.primary,
    textTheme: MhsTextTheme.darkTextTheme,
    chipTheme: MhsChipTheme.darkChipTheme,
    scaffoldBackgroundColor: MhsColors.black,
    appBarTheme: MhsAppBarTheme.darkAppBarTheme,
    checkboxTheme: MhsCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: MhsBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: MhsElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MhsOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MhsTextFormFieldTheme.darkInputDecorationTheme,
  );
}
