import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mhs_store/common/styles/spacing_styles.dart';
import 'package:mhs_store/utils/constants/image_strings.dart';
import 'package:mhs_store/utils/constants/sizes.dart';
import 'package:mhs_store/utils/constants/text_strings.dart';
import 'package:mhs_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MhsHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: MhsSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            // Logo, Title, SubTitle
            Column(
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
            ),

            //form
            Form(
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
                    children: [
                      //Remember me
                      Checkbox(value: true, onChanged: (value) {}),
                      Text(MhsTexts.rememberMe),

                      //Forget password
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
