// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:task/page/widgets/simple_button.dart';

import '../colors.dart';
import 'custom_sized_box.dart';
import 'size_config.dart';

class SectionFrame extends StatelessWidget {
  final bool enabledBottomBordeRadius;
  final List<Widget> content;
  const SectionFrame({
    Key? key,
    this.enabledBottomBordeRadius = true,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: SizeConfig(context, 12)(),
            horizontal: SizeConfig(context, 16)(),
          ),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(
                SizeConfig(context, 8)(),
              ),
              bottomRight: Radius.circular(
                SizeConfig(context, 8)(),
              ),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SimpleButton(
                text: "Описание",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                textColor: white,
                verticalPadding: 8,
                horizontalPadding: 16,
                borderRadius: 6,
                boxColor: black,
              ),
              SimpleButton(
                text: "Характеристики",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                textColor: black,
                verticalPadding: 8,
                horizontalPadding: 16,
                borderRadius: 6,
                boxColor: lightGrey,
              ),
              SimpleButton(
                text: "Отзывы",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                textColor: black,
                verticalPadding: 8,
                horizontalPadding: 16,
                borderRadius: 6,
                boxColor: lightGrey,
              ),
            ],
          ),
        ),
        const CustomSizedBox(height: 1),
        Container(
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
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, children: content),
        )
      ],
    );
  }
}
