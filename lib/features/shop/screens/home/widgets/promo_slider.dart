import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:mhs_store/common/custom_shapes/containers/circular_container.dart';
import 'package:mhs_store/common/widgets/images/rounded_image.dart';
import 'package:mhs_store/features/shop/controllers/home_controller.dart';
import 'package:mhs_store/utils/constants/colors.dart';
import 'package:mhs_store/utils/constants/sizes.dart';

class MhsPromoSlider extends StatelessWidget {
  const MhsPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => MhsRoundedImage(imageUrl: url)).toList(),
        ),
        SizedBox(height: MhsSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  MhsCircularContainer(
                    width: 20,
                    height: 4,
                    margin: EdgeInsets.only(right: 10),
                    backgroundColor:
                        controller.carousalCurrentIndex.value == i
                            ? MhsColors.primary
                            : MhsColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
