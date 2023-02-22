import 'package:flutter/material.dart';

import '../colors.dart';
import 'jost_text.dart';
import 'size_config.dart';

class Paragraph extends StatelessWidget {
  const Paragraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: SizeConfig(context, 16)(),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              JostText(
                "Title name",
                fontWeight: FontWeight.w400,
                color: grey,
              ),
              JostText("423 км")
            ],
          ),
        ),
        const Divider(height: 1, color: grey),
      ],
    );
  }
}
