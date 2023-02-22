import 'package:flutter/material.dart';
import 'jost_text.dart';
import 'size_config.dart';

import '../colors.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig(context, 12)(),
        vertical: SizeConfig(context, 6)(),
      ),
      decoration: const BoxDecoration(
        color: lightGrey,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          JostText(
            "3 323P",
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          JostText(
            "/шт.",
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: grey,
          ),
        ],
      ),
    );
  }
}
