// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:task/page/widgets/jost_text.dart';
import 'package:task/page/widgets/size_config.dart';

import '../colors.dart';

class SimpleButton extends StatelessWidget {
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final String text;
  final double verticalPadding;
  final double horizontalPadding;
  final double borderRadius;
  final Color boxColor;
  const SimpleButton({
    Key? key,
    this.textColor = black,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    required this.text,
    this.verticalPadding = 0.0,
    this.horizontalPadding = 0.0,
    this.borderRadius = 0.0,
    required this.boxColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig(
          context,
          verticalPadding,
        )(),
        horizontal: SizeConfig(
          context,
          horizontalPadding,
        )(),
      ),
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            SizeConfig(context, borderRadius)(),
          ),
        ),
      ),
      child: JostText(
        text,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: textColor,
      ),
    );
  }
}
