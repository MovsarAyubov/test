import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../colors.dart';
import '../custom_sized_box.dart';
import '../jost_text.dart';
import '../price_widget.dart';
import '../simple_banner.dart';
import '../simple_button.dart';
import '../size_config.dart';

class SectionOne extends StatelessWidget {
  const SectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              color: white,
              height: SizeConfig(context, 250)(),
              width: double.maxFinite,
              child: Image.asset(
                "assets/images/lamp.png",
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              bottom: SizeConfig(context, 15)(),
              child: SmoothPageIndicator(
                controller: PageController(initialPage: 1),
                count: 5,
                effect: ExpandingDotsEffect(
                    dotHeight: SizeConfig(context, 6)(),
                    dotWidth: SizeConfig(context, 6)(),
                    dotColor: grey,
                    activeDotColor: black),
              ),
            )
          ],
        ),
        const CustomSizedBox(height: 1),
        Container(
          color: white,
          padding: EdgeInsets.all(
            SizeConfig(context, 16)(),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SimpleBanner(
                    title: "Бестселлер",
                    fontSize: 14,
                    textColor: orange,
                    containerColor: lightYellow,
                  ),
                  const CustomSizedBox(width: 4),
                  SimpleBanner(
                    icon: Icon(
                      Icons.star_rate_rounded,
                      color: blue,
                      size: SizeConfig(context, 14)(),
                    ),
                    title: "4.3",
                    fontSize: 14,
                    textColor: blue,
                    containerColor: lightBlue,
                  ),
                  const CustomSizedBox(width: 4),
                  const SimpleBanner(
                    title: "12 отзывов",
                    fontSize: 14,
                    textColor: black,
                    containerColor: lightGrey,
                  ),
                  const CustomSizedBox(width: 4),
                  const SimpleBanner(
                    title: "Apple",
                    fontSize: 14,
                    textColor: black,
                    containerColor: lightGrey,
                  ),
                ],
              ),
              const CustomSizedBox(height: 16),
              const JostText(
                "Светильник накладной MAYTONI Sonas (C033WL-01W) GU10 50 Вт 220-240 В белый матовый IP20 d60x100 мм",
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              const CustomSizedBox(height: 12),
              const PriceWidget(),
              const CustomSizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SimpleButton(
                    borderRadius: 8,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    verticalPadding: 12,
                    horizontalPadding: 24,
                    text: "Сообщение",
                    boxColor: lightGrey,
                  ),
                  CustomSizedBox(width: 8),
                  Expanded(
                    child: SimpleButton(
                      borderRadius: 8,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      verticalPadding: 12,
                      horizontalPadding: 24,
                      text: "Добавить в корзину",
                      textColor: white,
                      boxColor: blue,
                    ),
                  ),
                ],
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
                SizeConfig(context, 8)(),
              ),
              bottomRight: Radius.circular(
                SizeConfig(context, 8)(),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: SizeConfig(context, 20)(),
                backgroundColor: lightGrey,
              ),
              const CustomSizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const JostText(
                    "Shop",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.star_rate_rounded,
                        size: SizeConfig(context, 14)(),
                        color: blue,
                      ),
                      const JostText(
                        "4.3/15 отзывов",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: blue,
                      )
                    ],
                  )
                ],
              ),
              const Expanded(
                child: SizedBox(),
              ),
              const CustomSizedBox(
                height: 30,
                width: 30,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: grey,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
