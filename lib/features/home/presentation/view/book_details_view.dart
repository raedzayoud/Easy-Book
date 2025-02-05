import 'package:book/core/utlis/service_locator.dart';
import 'package:book/features/home/data/model/book_model/book_model.dart';
import 'package:book/features/home/data/repos/home_repo_impl.dart';
import 'package:book/features/home/presentation/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:book/features/home/presentation/view/widget/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = SimilarBookCubit(getIt.get<HomeRepoImpl>());
        cubit.fetchcubitSimilarBooks(
          categorie: (bookModel.volumeInfo!.categories?.isNotEmpty ?? false)
              ? bookModel.volumeInfo!.categories![0]
              : "",
        );
        return cubit;
      },
      child: Scaffold(
        body: SafeArea(
          child: BookDetailsViewBody(bookmodel: bookModel),
        ),
      ),
    );
  }
}
