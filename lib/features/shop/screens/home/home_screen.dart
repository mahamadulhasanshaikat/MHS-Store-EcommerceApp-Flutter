import 'package:flutter/material.dart';
import 'package:mhs_store/common/custom_shapes/containers/search_container.dart';
import 'package:mhs_store/common/widgets/texts/section_heading.dart';
import 'package:mhs_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:mhs_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:mhs_store/utils/constants/sizes.dart';
import '../../../../common/custom_shapes/containers/primary_header_container.dart';
import '../../../../utils/constants/image_strings.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //================= Header =================
          children: [
            MhsPrimaryHeaderContainer(
              child: Column(
                children: [
                  //============ AppBar ================
                  MhsHomeAppBar(),
                  SizedBox(height: MhsSizes.spaceBtwSections),

                  //============ Search Bar ================
                  MhsSearchContainer(text: 'Search in Store ...'),
                  SizedBox(height: MhsSizes.spaceBtwSections),

                  //============ Categories  ================
                  Padding(
                    padding: EdgeInsets.only(left: MhsSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        MhsSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: MhsSizes.spaceBtwItems),

                        // Categories
                        MhsHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(MhsSizes.defaultSpace),
              child: MhsPromoSlider(
                banners: [
                  MhsImages.promoBanner1,
                  MhsImages.promoBanner2,
                  MhsImages.promoBanner3,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
