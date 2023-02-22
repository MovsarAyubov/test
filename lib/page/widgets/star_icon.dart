// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:task/page/widgets/size_config.dart';

class StarIcon extends StatelessWidget {
  final Color color;
  final double iconSize;
  const StarIcon({
    Key? key,
    required this.color,
    this.iconSize = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star_rate_rounded,
      color: color,
      size: SizeConfig(context, iconSize)(),
    );
  }
}
