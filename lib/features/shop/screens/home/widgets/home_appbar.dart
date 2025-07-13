import 'package:flutter/material.dart';
import 'package:mhs_store/common/widgets/appbar/appbar.dart';
import 'package:mhs_store/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:mhs_store/utils/constants/colors.dart';
import 'package:mhs_store/utils/constants/text_strings.dart';

class MhsHomeAppBar extends StatelessWidget {
  const MhsHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MhsAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            MhsTexts.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: MhsColors.grey),
          ),
          Text(
            MhsTexts.homeAppbarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: MhsColors.white),
          ),
        ],
      ),
      actions: [
        MhsCartCounterIcon(onPressed: () {}, iconColor: MhsColors.white),
      ],
    );
  }
}
