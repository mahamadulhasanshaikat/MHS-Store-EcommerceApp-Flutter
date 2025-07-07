import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:mhs_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:mhs_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:mhs_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:mhs_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:mhs_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:mhs_store/utils/constants/image_strings.dart';
import 'package:mhs_store/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Horizontal scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: MhsImages.onBoardingImage1,
                title: MhsTexts.onBoardingTitle1,
                subTitle: MhsTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: MhsImages.onBoardingImage2,
                title: MhsTexts.onBoardingTitle2,
                subTitle: MhsTexts.onBoardingSubTitle2,
              ),

              OnBoardingPage(
                image: MhsImages.onBoardingImage3,
                title: MhsTexts.onBoardingTitle3,
                subTitle: MhsTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //Skip Button
          OnBoardingSkip(),

          //Dot Navigator smooth page indicator
          OnBoardingNavigation(),

          //Circular Button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
