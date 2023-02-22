// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:task/page/widgets/jost_text.dart';
import 'package:task/page/widgets/size_config.dart';

class SimpleBanner extends StatelessWidget {
  final double verticalPadding;
  final double horizontalPadding;
  final String title;
  final Widget? icon;
  final double fontSize;
  final Color textColor;
  final Color containerColor;
  const SimpleBanner({
    Key? key,
    this.verticalPadding = 4,
    this.horizontalPadding = 8,
    required this.title,
    this.icon,
    required this.fontSize,
    required this.textColor,
    required this.containerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig(context, horizontalPadding)(),
          vertical: SizeConfig(context, verticalPadding)()),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon ?? const SizedBox(),
          JostText(
            title,
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ],
      ),
    );
  }
}
