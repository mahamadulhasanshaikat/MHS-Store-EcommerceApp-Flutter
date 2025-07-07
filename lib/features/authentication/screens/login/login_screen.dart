import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:mhs_store/common/styles/spacing_styles.dart';
import 'package:mhs_store/common/widgets/login_signup/form_divider.dart';
import 'package:mhs_store/common/widgets/login_signup/social_button.dart';
import 'package:mhs_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:mhs_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:mhs_store/utils/constants/sizes.dart';
import 'package:mhs_store/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: MhsSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            // Logo, Title, SubTitle
            MhsLoginHeader(),

            //form
            MhsLoginForm(),

            //Divider
            MhsFormDivider(dividerText: MhsTexts.orSignInWith.capitalize!),
            SizedBox(height: MhsSizes.spaceBtwSections),

            //Footer
            MhsSocialButtons(),
          ],
        ),
      ),
    );
  }
}
