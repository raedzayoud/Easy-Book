import 'package:book/constant.dart';
import 'package:book/core/utlis/styles.dart';
import 'package:book/features/home/data/model/book_model/book_model.dart';
import 'package:book/features/home/presentation/view/widget/book_button.dart';
import 'package:book/features/home/presentation/view/widget/custom_book_item.dart';
import 'package:book/features/home/presentation/view/widget/rating_book.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsSection({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: width * .17, vertical: width * .01),
          child: CustomBookItem(
            imageurl: bookModel.volumeInfo!.imageLinks!.thumbnail ?? "",
          ),
        ),
        Text(
          bookModel.volumeInfo!.title! ?? '',
          style: AppStyles.textStyle20.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: KGTSectraFine),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 5,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo!.authors?.isNotEmpty ?? false
                ? bookModel.volumeInfo!.authors![0]
                : "Unknown Author",
            style: AppStyles.textStyle16.copyWith(
              color: Colors.grey,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .32),
          child: RatingBook(
            rating: "5",
            count: bookModel.volumeInfo?.pageCount ?? 0,
          ),
        ),
        SizedBox(
          height: 37,
        ),
        BookButton(bookModel: bookModel,),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
      ],
    );
  }
}
