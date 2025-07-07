import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mhs_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:mhs_store/utils/constants/colors.dart';
import 'package:mhs_store/utils/constants/sizes.dart';
import 'package:mhs_store/utils/device/device_utility.dart';
import 'package:mhs_store/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MhsHelperFunctions.isDarkMode(context);
    return Positioned(
      right: MhsSizes.defaultSpace,
      bottom: MhsDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: dark ? MhsColors.primary : Colors.black,
        ),
        child: Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
