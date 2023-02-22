import 'package:flutter/material.dart';
import '../bottom_tab_bar_icon.dart';
import '../content_bloc.dart';
import '../custom_sized_box.dart';
import '../jost_text.dart';
import '../size_config.dart';

import '../../colors.dart';

class SectionSeven extends StatelessWidget {
  const SectionSeven({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ContentBloc(
          content: [
            InkWell(
              onTap: () {},
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig(context, 8)(),
                  horizontal: SizeConfig(context, 16)(),
                ),
                decoration: BoxDecoration(
                  color: blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      SizeConfig(context, 8)(),
                    ),
                  ),
                ),
                child: Column(
                  children: const [
                    JostText("Добавить в корзину",
                        color: white,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Jost SemiBold"),
                    JostText(
                      "3 323Р",
                      fontSize: 12,
                      color: white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const CustomSizedBox(height: 1),
        Padding(
          padding: EdgeInsets.only(
            bottom: SizeConfig(context, 13)(),
          ),
          child: ContentBloc(
            content: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  BottomTabBarIcon(icon: "home.svg"),
                  BottomTabBarIcon(icon: "menu.svg"),
                  BottomTabBarIcon(icon: "basket.svg"),
                  BottomTabBarIcon(icon: "favorite.svg"),
                  BottomTabBarIcon(icon: "person.svg"),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
