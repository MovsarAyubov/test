import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/page/widgets/custom_sized_box.dart';
import 'package:task/page/widgets/product_card.dart';

import '../../colors.dart';
import '../jost_text.dart';
import '../size_config.dart';

class SectionSix extends StatelessWidget {
  const SectionSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig(context, 12)(),
        horizontal: SizeConfig(context, 16)(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const JostText("Похожие товары", fontSize: 16),
          const CustomSizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ProductCard(
                isDiscountedProduct: true,
                textColor: white,
                showOldPrice: true,
                priceBannerColor: green,
                simpleButtonColor: blue,
              ),
              CustomSizedBox(
                width: 8,
              ),
              ProductCard(
                isDiscountedProduct: false,
                priceBannerColor: lightGrey,
                simpleButtonColor: green,
                isFavorite: true,
              )
            ],
          ),
        ],
      ),
    );
  }
}
