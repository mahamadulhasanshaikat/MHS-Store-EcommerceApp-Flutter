import 'package:flutter/material.dart';
import 'package:mhs_store/utils/constants/colors.dart';
import 'package:mhs_store/utils/constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class MhsOutlinedButtonTheme {
  MhsOutlinedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: MhsColors.dark,
      side: const BorderSide(color: MhsColors.borderPrimary),
      textStyle: const TextStyle(
        fontSize: 16,
        color: MhsColors.black,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: MhsSizes.buttonHeight,
        horizontal: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MhsSizes.buttonRadius),
      ),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: MhsColors.light,
      side: const BorderSide(color: MhsColors.borderPrimary),
      textStyle: const TextStyle(
        fontSize: 16,
        color: MhsColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: MhsSizes.buttonHeight,
        horizontal: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MhsSizes.buttonRadius),
      ),
    ),
  );
}
