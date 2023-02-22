import 'package:flutter/material.dart';
import 'package:task/page/colors.dart';
import 'package:task/page/widgets/size_config.dart';

class JostText extends StatelessWidget {
  final TextDecoration textDecoration;
  final String text;
  final String fontFamily;
  final FontStyle? fontStyle;
  final FontWeight fontWeight;
  final double fontSize;
  final Color? color;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  const JostText(
    this.text, {
    super.key,
    this.textDecoration = TextDecoration.none,
    this.fontFamily = "Jost Medium",
    this.fontStyle = FontStyle.normal,
    this.textAlign,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 14,
    this.color = black,
    this.maxLines,
    this.overflow = TextOverflow.clip,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          fontFamily: fontFamily,
          fontStyle: fontStyle,
          decoration: textDecoration),
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
