import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mhs_store/utils/constants/sizes.dart';
import 'package:mhs_store/utils/device/device_utility.dart';

class MhsAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MhsAppbar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallbackAction? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MhsSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading:
            showBackArrow
                ? IconButton(
                  onPressed: () => Get.back,
                  icon: Icon(Iconsax.arrow_left),
                )
                : leadingIcon != null
                ? IconButton(onPressed: () => Get.back, icon: Icon(leadingIcon))
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MhsDeviceUtils.getAppBarHeight());
}
