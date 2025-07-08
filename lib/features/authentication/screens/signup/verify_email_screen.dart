import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhs_store/common/widgets/success_screen/success_screen.dart';
import 'package:mhs_store/features/authentication/screens/login/login_screen.dart';
import 'package:mhs_store/utils/constants/image_strings.dart';
import 'package:mhs_store/utils/constants/sizes.dart';
import 'package:mhs_store/utils/constants/text_strings.dart';
import 'package:mhs_store/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(MhsSizes.defaultSpace),
        child: Column(
          children: [
            // Image
            Image(
              width: MhsHelperFunctions.screenWidth() * 0.6,
              image: AssetImage(MhsImages.deliveredEmailIllustration),
            ),
            SizedBox(height: MhsSizes.spaceBtwSections),

            // Title & SubTitle
            Text(
              MhsTexts.confirmEmail,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MhsSizes.spaceBtwItems),

            Text(
              "support@mhsTechnologyLtd.com",
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MhsSizes.spaceBtwItems),

            Text(
              MhsTexts.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.labelSmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MhsSizes.spaceBtwSections),

            // Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed:
                    () => Get.to(
                      () => SuccessScreen(
                        image: MhsImages.staticSuccessIllustration,
                        title: MhsTexts.yourAccountCreatedTitle,
                        subTitle: MhsTexts.yourAccountCreatedSubTitle,
                        onPressed: () => Get.to(() => LoginScreen()),
                      ),
                    ),
                child: Text(MhsTexts.tContinue),
              ),
            ),
            SizedBox(height: MhsSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: Text(MhsTexts.resendEmail),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
