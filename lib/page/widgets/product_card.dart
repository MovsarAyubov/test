// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:task/page/widgets/custom_sized_box.dart';
import 'package:task/page/widgets/jost_text.dart';
import 'package:task/page/widgets/simple_banner.dart';
import 'package:task/page/widgets/simple_button.dart';
import 'package:task/page/widgets/size_config.dart';

import '../colors.dart';

class ProductCard extends StatelessWidget {
  final Color textColor;
  final bool showOldPrice;
  final Color priceBannerColor;
  final Color simpleButtonColor;
  final bool isFavorite;
  final bool isDiscountedProduct;
  const ProductCard({
    Key? key,
    this.textColor = black,
    this.showOldPrice = false,
    required this.priceBannerColor,
    required this.simpleButtonColor,
    this.isFavorite = false,
    this.isDiscountedProduct = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: SizeConfig(context, 4)(),
              bottom: SizeConfig(context, 12)(),
              right: SizeConfig(context, 12)(),
              left: SizeConfig(context, 12)(),
            ),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  SizeConfig(context, 8)(),
                ),
              ),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/photo.png",
                      fit: BoxFit.cover,
                    ),
                    isDiscountedProduct
                        ? const Positioned(
                            left: 0,
                            bottom: 0,
                            child: SimpleBanner(
                                verticalPadding: 2,
                                horizontalPadding: 4,
                                title: "- 26%",
                                fontSize: 12,
                                textColor: white,
                                containerColor: red),
                          )
                        : const SizedBox()
                  ],
                ),
                const JostText(
                  "Светильник накладн MAYT (C033WL-01W) GU10 50 Вт 220-240 В белый матовый IP20 d60x100 мм",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const JostText("xDecor", fontSize: 12, color: blue),
                    const CustomSizedBox(height: 8),
                    Row(
                      children: [
                        SimpleBanner(
                            title: "3 323",
                            fontSize: 16,
                            textColor: textColor,
                            containerColor: priceBannerColor),
                        const CustomSizedBox(width: 8),
                        showOldPrice
                            ? const JostText(
                                "3 323",
                                color: grey,
                                textDecoration: TextDecoration.lineThrough,
                              )
                            : const SizedBox()
                      ],
                    ),
                    const CustomSizedBox(height: 12),
                    SimpleButton(
                      text: "В корзину",
                      boxColor: simpleButtonColor,
                      verticalPadding: 8,
                      horizontalPadding: 16,
                      textColor: white,
                      borderRadius: 6,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: SizeConfig(context, 4)(),
            top: SizeConfig(context, 4)(),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: SizeConfig(context, 30)(),
                width: SizeConfig(context, 30)(),
                decoration: BoxDecoration(
                  color: lightGrey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      SizeConfig(context, 6)(),
                    ),
                  ),
                ),
                child: isFavorite
                    ? const Icon(Icons.favorite, color: red)
                    : const Icon(Icons.favorite_border, color: grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
