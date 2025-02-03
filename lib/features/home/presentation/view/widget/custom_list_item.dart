import 'package:book/core/utlis/router.dart';
import 'package:book/core/widgets/customLoading_indicator_newset_books.dart';
import 'package:book/core/widgets/custom_error.dart';
import 'package:book/core/widgets/custom_loading_indicator_featurebooks.dart';
import 'package:book/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:book/features/home/presentation/view/widget/custom_list_best_seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomListItems extends StatelessWidget {
  const CustomListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.list.length,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.KBookDetails,extra: state.list[index]);
                    },
                    child: CustomListNewestBook(
                      bookModel: state.list[index],
                    ));
              });
        } else if (state is NewestBooksFailure) {
          return CustomError(errorMessage: state.errorMessage);
        } else {
          return CustomloadingIndicatornewsetBooks();
        }
      },
    );
  }
}
