import 'package:book/features/home/data/model/book_model/book_model.dart';
import 'package:book/features/home/presentation/view/widget/book_details_section.dart';
import 'package:book/features/home/presentation/view/widget/buttom_book_details.dart';
import 'package:book/features/home/presentation/view/widget/custom_appar_book_details.dart';
import 'package:book/features/home/presentation/view/widget/similar_book.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookmodel;
  const BookDetailsViewBody({super.key, required this.bookmodel});

  @override
  Widget build(BuildContext context) {
    // i use CustomScrollview to enable use expanded
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustomApparBookDetails(),
                  BookDetailsSection(bookModel: bookmodel,),
                  BottomBookDetails(),
                  Expanded(
                    child: SimilarBookListView(),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
