import 'package:book/constant.dart';
import 'package:book/core/utlis/styles.dart';
import 'package:book/features/home/presentation/view/widget/book_button.dart';
import 'package:book/features/home/presentation/view/widget/book_details_section.dart';
import 'package:book/features/home/presentation/view/widget/buttom_book_details.dart';
import 'package:book/features/home/presentation/view/widget/custom_appar_book_details.dart';
import 'package:book/features/home/presentation/view/widget/custom_book_item.dart';
import 'package:book/features/home/presentation/view/widget/rating_book.dart';
import 'package:book/features/home/presentation/view/widget/similar_book.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
                  BookDetailsSection(),
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
