// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:task/page/widgets/star_icon.dart';

import '../colors.dart';

class FiveStars extends StatelessWidget {
  final double iconSize;
  const FiveStars({
    Key? key,
    this.iconSize = 22,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        StarIcon(color: yellow, iconSize: iconSize),
        StarIcon(color: yellow, iconSize: iconSize),
        StarIcon(color: yellow, iconSize: iconSize),
        StarIcon(color: mediumGrey, iconSize: iconSize),
        StarIcon(color: mediumGrey, iconSize: iconSize),
      ],
    );
  }
}
