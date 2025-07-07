import 'package:flutter/material.dart';
import 'package:mhs_store/utils/constants/image_strings.dart';
import 'package:mhs_store/utils/constants/sizes.dart';
import 'package:mhs_store/utils/constants/text_strings.dart';
import 'package:mhs_store/utils/helpers/helper_functions.dart';

class MhsLoginHeader extends StatelessWidget {
  const MhsLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MhsHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
            dark ? MhsImages.lightAppLogo : MhsImages.darkAppLogo,
          ),
        ),

        Text(
          MhsTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: MhsSizes.sm),
        Text(
          MhsTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
