import 'package:flutter/material.dart';
import 'package:mhs_store/utils/constants/colors.dart';
import 'package:mhs_store/utils/constants/sizes.dart';
import 'package:mhs_store/utils/helpers/helper_functions.dart';

class MhsVerticalImageText extends StatelessWidget {
  const MhsVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = MhsColors.white,
    this.backgroundColor = MhsColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = MhsHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: MhsSizes.spaceBtwItems),
        child: Column(
          children: [
            // Circular icon
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(MhsSizes.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ??
                    (dark ? MhsColors.black : MhsColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color: dark ? MhsColors.light : MhsColors.dark,
              ),
            ),
            // Text
            SizedBox(height: MhsSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
