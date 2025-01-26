
import 'package:book/core/utlis/assets.dart';
import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: const BoxDecoration(
            //color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(AppImages.testimage))),
      ),
    );
  }
}
