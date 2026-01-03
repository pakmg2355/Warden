import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemIconRepository {
  static const String _basePath = 'assets/icon/items';

  static Widget icon(String iconId, Color color, {double size = 40}) {
    return SvgPicture.asset(
      '$_basePath/$iconId.svg',
      width: size,
      height: size,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}
