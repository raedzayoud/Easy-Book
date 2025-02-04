import 'package:book/constant.dart';
import 'package:book/core/utlis/assets.dart';
import 'package:book/core/utlis/styles.dart';
import 'package:book/core/widgets/custom_image.dart';
import 'package:book/features/home/data/model/book_model/book_model.dart';
import 'package:book/features/home/presentation/view/widget/customauthorsbooks.dart';
import 'package:book/features/home/presentation/view/widget/rating_book.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListNewestBook extends StatelessWidget {
  final BookModel? bookModel;
  const CustomListNewestBook({super.key, this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 7, right: 10),
          child: SizedBox(
            height: 150,
            child: AspectRatio(
                aspectRatio: 2.6 / 4,
                child: CustomNetworkImage(
                  bookModel: bookModel!,)
                  ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel!.volumeInfo!.title!,
                      style: AppStyles.textStyle20
                          .copyWith(fontFamily: KGTSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )),
              ),
              const SizedBox(
                height: 3,
              ),
              CustomAuthorsBooks(
                bookModel: bookModel!,
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Free",
                    style: AppStyles.textStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  RatingBook(
                    count: bookModel!.volumeInfo!.pageCount!,
                    rating: "5",
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
