import 'package:flutter/material.dart';
import 'package:mhs_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:mhs_store/utils/constants/sizes.dart';
import 'package:mhs_store/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MhsDeviceUtils.getAppBarHeight(),
      right: MhsSizes.defaultSpace,

      child: TextButton(onPressed: () => OnboardingController.instance.skipPage(), child: Text("Skip")),
    );
  }
}
