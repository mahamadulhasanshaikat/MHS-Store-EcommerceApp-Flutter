import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:mhs_store/common/widgets/login_signup/form_divider.dart';
import 'package:mhs_store/common/widgets/login_signup/social_button.dart';
import 'package:mhs_store/utils/constants/sizes.dart';
import 'package:mhs_store/utils/constants/text_strings.dart';
import 'widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MhsSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                MhsTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: MhsSizes.spaceBtwSections),

              // form
              MhsSignUpForm(),
              SizedBox(height: MhsSizes.spaceBtwSections),

              // Divider
              MhsFormDivider(dividerText: MhsTexts.orSignInWith.capitalize!),
              SizedBox(height: MhsSizes.spaceBtwSections),

              // Social Button
              MhsSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
