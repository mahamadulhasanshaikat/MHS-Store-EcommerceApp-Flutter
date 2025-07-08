import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class MhsTermsAndConditionCheckbox extends StatelessWidget {
  const MhsTermsAndConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MhsHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        SizedBox(width: MhsSizes.spaceBtwItems),

        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${MhsTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${MhsTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? MhsColors.white : MhsColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? MhsColors.white : MhsColors.primary,
                ),
              ),
              TextSpan(
                text: '${MhsTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: MhsTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? MhsColors.white : MhsColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? MhsColors.white : MhsColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
