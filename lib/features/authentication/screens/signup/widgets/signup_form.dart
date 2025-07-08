import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mhs_store/features/authentication/screens/signup/verify_email_screen.dart';
import 'package:mhs_store/utils/constants/sizes.dart';
import 'package:mhs_store/utils/constants/text_strings.dart';
import 'terms_conditions_checkbox.dart';

class MhsSignUpForm extends StatelessWidget {
  const MhsSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // First and Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: MhsTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),

              SizedBox(width: MhsSizes.spaceBtwInputFields),

              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: MhsTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MhsSizes.spaceBtwInputFields),

          // UserName
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: MhsTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(height: MhsSizes.spaceBtwInputFields),

          // Email
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: MhsTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: MhsSizes.spaceBtwInputFields),

          // Phone Number
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: MhsTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(height: MhsSizes.spaceBtwInputFields),

          // Password
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: MhsTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(height: MhsSizes.spaceBtwSections),

          // Terms & Conditions Checkbox
          MhsTermsAndConditionCheckbox(),
          SizedBox(height: MhsSizes.spaceBtwSections),

          //SignUp Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => VerifyEmailScreen()),
              child: Text(MhsTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
