import 'package:flutter/material.dart';
import 'package:task/page/colors.dart';
import 'package:task/page/widgets/custom_sized_box.dart';
import 'package:task/page/widgets/jost_text.dart';
import 'package:task/page/widgets/simple_button.dart';
import 'package:task/page/widgets/size_config.dart';

import '../../texts.dart';

class SectionTwo extends StatelessWidget {
  const SectionTwo({super.key});

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
          padding: EdgeInsets.all(
            SizeConfig(context, 16)(),
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
          child: const JostText(
            detailedDescription,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: "Jost Regular",
            color: black,
          ),
        ),
      ],
    );
  }
}
