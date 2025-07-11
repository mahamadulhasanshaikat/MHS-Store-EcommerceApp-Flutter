import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../curved_edges/widgets/curved_edges_widget.dart';
import 'circular_container.dart';

class MhsPrimaryHeaderContainer extends StatelessWidget {
  const MhsPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MhsCurvedEdgeWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: MhsColors.primary,

          child: Stack(
            children: [
              // BackGround Custom Shapes
              Positioned(
                top: -100,
                right: -250,
                child: MhsCircularContainer(
                  backgroundColor: MhsColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: MhsCircularContainer(
                  backgroundColor: MhsColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
