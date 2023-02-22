import 'package:flutter/material.dart';

import 'widgets/custom_sized_box.dart';
import 'widgets/my_app_bar.dart';
import 'widgets/sections/section_five.dart';
import 'widgets/sections/section_one.dart';
import 'widgets/sections/section_seven.dart';
import 'widgets/sections/section_six.dart';
import 'widgets/sections/section_three.dart';
import 'widgets/sections/section_two.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        context: context,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomSizedBox(height: 1),
            SectionOne(),
            CustomSizedBox(height: 24),
            SectionTwo(),
            CustomSizedBox(height: 24),
            SectionThree(),
            CustomSizedBox(height: 24),
            SectionFive(),
            CustomSizedBox(height: 24),
            SectionSix(),
            CustomSizedBox(height: 24),
            SectionSeven(),
          ],
        ),
      ),
    );
  }
}
