import 'package:book/constant.dart';
import 'package:book/core/utlis/assets.dart';
import 'package:book/core/utlis/router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppar extends StatelessWidget {
  const CustomAppar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        children: [
          Container(height: 100, child: Image.asset(AppImages.logo)),
          Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.KSearchView);
              },
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: kWhite,
              ))
        ],
      ),
    );
  }
}
