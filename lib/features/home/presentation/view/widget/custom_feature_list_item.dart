import 'package:book/core/utlis/router.dart';
import 'package:book/core/widgets/custom_error.dart';
import 'package:book/core/widgets/custom_loading_indicator_featurebooks.dart';
import 'package:book/features/home/presentation/manager/feature_books_cubit/feature_books_cubit.dart';
import 'package:book/features/home/presentation/view/widget/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class CustomFeatureListItem extends StatelessWidget {
  const CustomFeatureListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.list.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.KBookDetails,extra: state.list[index]);
                    },
                    child: CustomBookItem(
                      imageurl:
                          "${state.list[index].volumeInfo!.imageLinks!.thumbnail}",
                    ),
                  );
                }),
          );
        } else if (state is FeatureBooksFailure) {
          return CustomError(errorMessage: state.errorMessage);
        } else {
          //return Column();
          return CustomLoadingIndicatorFeatureBooks();
        }
      },
    );
  }
}
