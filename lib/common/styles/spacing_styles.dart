import 'package:flutter/cupertino.dart';
import 'package:mhs_store/utils/constants/sizes.dart';

class MhsSpacingStyle {
  static EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: MhsSizes.appBarHeight,
    left: MhsSizes.defaultSpace,
    bottom: MhsSizes.defaultSpace,
    right: MhsSizes.defaultSpace,
  );
}
