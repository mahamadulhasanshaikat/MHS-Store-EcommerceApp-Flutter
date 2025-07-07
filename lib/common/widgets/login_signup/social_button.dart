import 'package:flutter/material.dart';
import 'package:mhs_store/utils/constants/colors.dart';
import 'package:mhs_store/utils/constants/image_strings.dart';
import 'package:mhs_store/utils/constants/sizes.dart';

class MhsSocialButtons extends StatelessWidget {
  const MhsSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: MhsColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: MhsSizes.iconMd,
              height: MhsSizes.iconMd,
              image: AssetImage(MhsImages.google),
            ),
          ),
        ),
        SizedBox(width: MhsSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: MhsColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: MhsSizes.iconMd,
              height: MhsSizes.iconMd,
              image: AssetImage(MhsImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
