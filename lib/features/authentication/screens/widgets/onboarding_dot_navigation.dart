import 'package:flutter/material.dart';
import 'package:mhs_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:mhs_store/utils/constants/colors.dart';
import 'package:mhs_store/utils/constants/sizes.dart';
import 'package:mhs_store/utils/device/device_utility.dart';
import 'package:mhs_store/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = MhsHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: MhsDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: MhsSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? MhsColors.light : MhsColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
