import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class MhsChipTheme {
  MhsChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    // ignore: deprecated_member_use
    disabledColor: MhsColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: MhsColors.black),
    selectedColor: MhsColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: MhsColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: MhsColors.darkerGrey,
    labelStyle: TextStyle(color: MhsColors.white),
    selectedColor: MhsColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: MhsColors.white,
  );
}
