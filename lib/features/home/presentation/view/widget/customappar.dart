
import 'package:book/constant.dart';
import 'package:book/core/utlis/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppar extends StatelessWidget {
  const CustomAppar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
      child: Row(
        children: [
          Container(height: 100, child: Image.asset(AppImages.logo)),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: kWhite,
              ))
        ],
      ),
    );
  }
}
