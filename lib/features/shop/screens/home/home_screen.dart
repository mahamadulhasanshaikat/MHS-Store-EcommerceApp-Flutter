import 'package:flutter/material.dart';
import '../../../../common/custom_shapes/containers/circular_container.dart';
import '../../../../common/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/custom_shapes/curved_edges/widgets/curved_edges_widget.dart';
import '../../../../utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [MhsPrimaryHeaderContainer(child: Column(children: [
            

          ],
        ))],
        ),
      ),
    );
  }
}
