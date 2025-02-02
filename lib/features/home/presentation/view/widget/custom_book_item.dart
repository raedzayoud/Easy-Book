import 'package:book/core/utlis/assets.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookItem extends StatelessWidget {
  final String imageurl;
  const CustomBookItem({super.key, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageurl,
            errorWidget: (context, url, error) =>Icon(Icons.error,size: 50,),
          ),
        ),
      ),
    );
  }
}
