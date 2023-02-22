// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:task/page/colors.dart';
import 'package:task/page/widgets/custom_sized_box.dart';
import 'package:task/page/widgets/size_config.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final double appBarHeight;
  final BuildContext context;
  const MyAppBar({
    Key? key,
    this.appBarHeight = 54,
    required this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AppBar(
          elevation: 0,
          backgroundColor: white,
          leading: const Icon(
            Icons.arrow_back,
            color: black,
          ),
          title: CustomSizedBox(
            height: 38,
            width: 229,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: SizeConfig(context, 17)(),
                ),
                labelText: "Поиск в магазине",
                labelStyle: const TextStyle(
                    fontFamily: "Jost",
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
                filled: true,
                fillColor: const Color.fromRGBO(240, 243, 244, 1),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      SizeConfig(context, 8)(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const CustomSizedBox(
                height: 22,
                width: 22,
                child: Icon(
                  Icons.favorite_border,
                  color: black,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const CustomSizedBox(
                height: 22,
                width: 22,
                child: Icon(
                  Icons.search,
                  color: black,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(SizeConfig(context, appBarHeight)());
}
