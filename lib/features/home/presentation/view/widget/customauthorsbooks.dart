import 'package:book/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

class CustomAuthorsBooks extends StatelessWidget {
  final BookModel bookModel;
  const CustomAuthorsBooks({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (bookModel?.volumeInfo?.authors != null)
          for (int i = 0; i < bookModel!.volumeInfo!.authors!.length; i++)
            Text(bookModel!.volumeInfo!.authors![i]),
      ],
    );
  }
}