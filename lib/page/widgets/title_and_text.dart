// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:task/page/widgets/custom_sized_box.dart';
import 'package:task/page/widgets/jost_text.dart';

import '../colors.dart';

class TitleAndText extends StatelessWidget {
  final bool showMoreButton;
  final String title;
  final String text;
  const TitleAndText({
    Key? key,
    this.showMoreButton = false,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        JostText(title,
            fontWeight: FontWeight.w600, fontFamily: "Jost SemiBold"),
        const CustomSizedBox(height: 8),
        showMoreButton
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  JostText(text,
                      fontWeight: FontWeight.w400, fontFamily: "Jost Regular"),
                  InkWell(
                    onTap: () {},
                    child: const JostText(
                      "Еще",
                      color: blue,
                    ),
                  )
                ],
              )
            : JostText(text,
                fontWeight: FontWeight.w400, fontFamily: "Jost Regular"),
      ],
    );
  }
}
