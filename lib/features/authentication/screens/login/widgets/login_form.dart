import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mhs_store/features/authentication/screens/password_configuration.dart/forget_password_screen.dart';
import 'package:mhs_store/features/authentication/screens/signup/signup_screen.dart';
import 'package:mhs_store/utils/constants/sizes.dart';
import 'package:mhs_store/utils/constants/text_strings.dart';

class MhsLoginForm extends StatelessWidget {
  const MhsLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: MhsSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: MhsTexts.email,
              ),
            ),

            SizedBox(height: MhsSizes.spaceBtwInputFields),

            //Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: MhsTexts.password,
              ),
            ),

            SizedBox(height: MhsSizes.spaceBtwInputFields / 2),

            //Remember me and Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(MhsTexts.rememberMe),
                  ],
                ),

                //Forget password
                TextButton(
                  onPressed: () => Get.to(() => ForgetPasswordScreen()),
                  child: Text(MhsTexts.forgetPassword),
                ),
              ],
            ),
            SizedBox(height: MhsSizes.spaceBtwSections),
            //Sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(MhsTexts.signIn),
              ),
            ),
            SizedBox(height: MhsSizes.spaceBtwItems),

            //Create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => SignUpScreen()),
                child: Text(MhsTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
