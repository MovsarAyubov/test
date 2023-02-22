// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:task/page/colors.dart';
import 'package:task/page/widgets/size_config.dart';

class MyRectangle extends StatelessWidget {
  final double size;
  final double borderRadius;
  const MyRectangle({
    Key? key,
    required this.size,
    this.borderRadius = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: lightGrey,
        borderRadius: BorderRadius.all(
          Radius.circular(
            SizeConfig(context, borderRadius)(),
          ),
        ),
      ),
    );
  }
}
