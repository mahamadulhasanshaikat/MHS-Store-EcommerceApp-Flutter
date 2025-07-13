import 'package:flutter/material.dart';
import 'package:mhs_store/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:mhs_store/utils/constants/image_strings.dart';

class MhsHomeCategories extends StatelessWidget {
  const MhsHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return MhsVerticalImageText(
            image: MhsImages.shoeIcon,
            title: 'Shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}
