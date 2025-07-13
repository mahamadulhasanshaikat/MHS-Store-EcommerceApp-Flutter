import 'package:flutter/material.dart';
import 'package:mhs_store/common/custom_shapes/containers/search_container.dart';
import 'package:mhs_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:mhs_store/utils/constants/sizes.dart';
import '../../../../common/custom_shapes/containers/primary_header_container.dart';

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
                        Text(
                          "Popular Categories",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
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
