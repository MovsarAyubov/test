import 'package:flutter/material.dart';
import '../custom_sized_box.dart';
import '../jost_text.dart';
import '../paragraph.dart';
import '../section_frame.dart';

import '../size_config.dart';

class SectionThree extends StatelessWidget {
  const SectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionFrame(
      content: [
        const JostText("Главный"),
        const CustomSizedBox(height: 4),
        const Paragraph(),
        const Paragraph(),
        Padding(
          padding: EdgeInsets.only(
              top: SizeConfig(context, 16)(), bottom: SizeConfig(context, 4)()),
          child: const JostText("Дополнительные"),
        ),
        const Paragraph(),
        const Paragraph(),
        const Paragraph(),
        const Paragraph(),
      ],
    );
  }
}
