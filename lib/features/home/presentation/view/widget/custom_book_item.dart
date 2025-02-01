import 'package:book/core/utlis/assets.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  final String imageurl;
  const CustomBookItem({super.key, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            //color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.fill, image: NetworkImage(imageurl))),
      ),
    );
  }
}
