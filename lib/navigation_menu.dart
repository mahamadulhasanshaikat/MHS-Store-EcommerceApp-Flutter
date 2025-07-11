import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mhs_store/features/shop/screens/home/home_screen.dart';
import 'package:mhs_store/utils/constants/colors.dart';
import 'package:mhs_store/utils/helpers/helper_functions.dart';

class NavigationMenuScreen extends StatelessWidget {
  const NavigationMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = MhsHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected:
              (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? MhsColors.black : Colors.white,
          indicatorColor:
              darkMode
                  ? MhsColors.white.withOpacity(0.1)
                  : MhsColors.black.withOpacity(0.1),
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    // Home Screen
    HomeScreen(),
    Container(color: Colors.purple),
    Container(color: Colors.orange),
    Container(color: Colors.blue),
  ];
}
