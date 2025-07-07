import 'package:flutter/material.dart';
import 'package:mhs_store/utils/constants/colors.dart';
import 'package:mhs_store/utils/helpers/helper_functions.dart';

class MhsFormDivider extends StatelessWidget {
  const MhsFormDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = MhsHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? MhsColors.darkGrey : MhsColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(dividerText, style: Theme.of(context).textTheme.titleMedium),
        Flexible(
          child: Divider(
            color: dark ? MhsColors.darkGrey : MhsColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
