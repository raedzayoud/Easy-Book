import 'package:book/features/home/data/model/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  final BookModel bookModel;
  const CustomNetworkImage({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: CachedNetworkImage(
        fit: BoxFit.fill,
        imageUrl: "${bookModel?.volumeInfo?.imageLinks?.thumbnail ?? ""}",
        errorWidget: (context, url, error) => Icon(
          Icons.error,
          size: 50,
        ),
      ),
    );
  }
}
