import 'package:flutter/material.dart';
import '../../colors.dart';
import '../../texts.dart';
import '../content_bloc.dart';
import '../custom_sized_box.dart';
import '../empty_container.dart';
import '../jost_text.dart';
import '../section_frame.dart';
import '../size_config.dart';
import '../title_and_text.dart';

import '../five_stars.dart';

class SectionFive extends StatelessWidget {
  const SectionFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionFrame(
          enabledBottomBordeRadius: false,
          content: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    FiveStars(),
                    CustomSizedBox(width: 8),
                    JostText("4.1 / 5",
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ],
                ),
                const JostText("542 отзывов и 2312 оценок", color: grey)
              ],
            )
          ],
        ),
        const CustomSizedBox(height: 1),
        ContentBloc(
          content: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    JostText("Василий В."),
                    JostText("12 декабря, 2021", fontSize: 12, color: grey),
                  ],
                ),
                const FiveStars(
                  iconSize: 20,
                )
              ],
            ),
            const CustomSizedBox(height: 12),
            Row(
              children: const [
                MyRectangle(size: 50, borderRadius: 8),
                CustomSizedBox(
                  width: 8,
                ),
                MyRectangle(size: 50, borderRadius: 8),
                CustomSizedBox(
                  width: 8,
                ),
                MyRectangle(size: 50, borderRadius: 8),
              ],
            ),
            const CustomSizedBox(height: 12),
            const TitleAndText(title: "Достоинство", text: productBenefits),
            const CustomSizedBox(height: 12),
            const TitleAndText(title: "Недостатки", text: productFlaws),
            const CustomSizedBox(height: 12),
            const TitleAndText(
                title: "Комментарий", text: comment, showMoreButton: true),
          ],
        ),
        const CustomSizedBox(height: 1),
        ContentBloc(
          crossAxisAlignment: CrossAxisAlignment.end,
          content: [
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig(context, 8)(),
                  horizontal: SizeConfig(context, 16)(),
                ),
                decoration: BoxDecoration(
                  color: lightGrey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      SizeConfig(context, 6)(),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const JostText("Все отзывы"),
                    const CustomSizedBox(width: 8),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: SizeConfig(context, 14)(),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
