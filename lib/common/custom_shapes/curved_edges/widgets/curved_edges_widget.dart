import 'package:flutter/material.dart';

import '../curved_edged.dart';

class MhsCurvedEdgeWidget extends StatelessWidget {
  const MhsCurvedEdgeWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: MhsCustomCurvedEdges(), child: child);
  }
}
