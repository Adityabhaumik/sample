
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../app_constants.dart';

class BrandLogoTile extends StatelessWidget {
  const BrandLogoTile({
    required this.img,
    super.key,
  });
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: borderColor,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: SvgPicture.asset(
            img,
            colorFilter:const ColorFilter.mode(Color(0xFF7CD957), BlendMode.srcIn),
            semanticsLabel: 'img'
        ),
      ),
    );
  }
}
