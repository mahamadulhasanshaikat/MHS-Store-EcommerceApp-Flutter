import 'package:flutter/material.dart';
import 'package:mhs_store/utils/constants/colors.dart';
import 'package:mhs_store/utils/constants/sizes.dart';

class MhsTextFormFieldTheme {
  MhsTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MhsColors.darkGrey,
    suffixIconColor: MhsColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(
      fontSize: MhsSizes.fontSizeMd,
      color: MhsColors.black,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: MhsSizes.fontSizeSm,
      color: MhsColors.black,
    ),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    // ignore: deprecated_member_use
    floatingLabelStyle: const TextStyle().copyWith(
      // ignore: deprecated_member_use
      color: MhsColors.black.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MhsSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MhsColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MhsSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MhsColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MhsSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MhsColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MhsSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MhsColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MhsSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: MhsColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: MhsColors.darkGrey,
    suffixIconColor: MhsColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(
      fontSize: MhsSizes.fontSizeMd,
      color: MhsColors.white,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: MhsSizes.fontSizeSm,
      color: MhsColors.white,
    ),
    // ignore: deprecated_member_use
    floatingLabelStyle: const TextStyle().copyWith(
      // ignore: deprecated_member_use
      color: MhsColors.white.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MhsSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MhsColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MhsSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MhsColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MhsSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MhsColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MhsSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MhsColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MhsSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: MhsColors.warning),
    ),
  );
}
