import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mhs_store/utils/constants/colors.dart';
import 'package:mhs_store/utils/constants/sizes.dart';
import 'package:mhs_store/utils/device/device_utility.dart';
import 'package:mhs_store/utils/helpers/helper_functions.dart';

class MhsSearchContainer extends StatelessWidget {
  const MhsSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTab,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTab;

  @override
  Widget build(BuildContext context) {
    final dark = MhsHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTab,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: MhsSizes.defaultSpace),
        child: Container(
          width: MhsDeviceUtils.getScreenWidth(context),
          padding: EdgeInsets.all(MhsSizes.md),
          decoration: BoxDecoration(
            color:
                showBackground
                    ? dark
                        ? MhsColors.dark
                        : MhsColors.light
                    : Colors.transparent,
            borderRadius: BorderRadius.circular(MhsSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: MhsColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: MhsColors.darkerGrey),
              SizedBox(width: MhsSizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
