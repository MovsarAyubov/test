// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/page/widgets/custom_sized_box.dart';

class BottomTabBarIcon extends StatelessWidget {
  final String icon;
  const BottomTabBarIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSizedBox(
      height: 20,
      width: 20,
      child: SvgPicture.asset("assets/images/$icon", fit: BoxFit.contain),
    );
  }
}
