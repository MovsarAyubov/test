// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../colors.dart';
import 'size_config.dart';

class ContentBloc extends StatelessWidget {
  final bool enabledBottomPadding;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final List<Widget> content;
  final bool enabledBottomBordeRadius;
  const ContentBloc({
    Key? key,
    this.enabledBottomPadding = false,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    required this.content,
    this.enabledBottomBordeRadius = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig(context, 12)(),
        horizontal: SizeConfig(context, 16)(),
      ),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(
            SizeConfig(context, enabledBottomBordeRadius ? 8 : 0)(),
          ),
          bottomRight: Radius.circular(
            SizeConfig(context, enabledBottomBordeRadius ? 8 : 0)(),
          ),
        ),
      ),
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: content,
        ),
      ),
    );
  }
}
