import 'package:book/core/utlis/router.dart';
import 'package:book/core/utlis/styles.dart';
import 'package:book/core/widgets/custom_error.dart';
import 'package:book/core/widgets/custom_simple_loading.dart';
import 'package:book/features/home/presentation/view/widget/custom_list_newest_book.dart';
import 'package:book/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchResultView extends StatelessWidget {
  const SearchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(builder: (context, state) {
      if (state is SearchInitial) {
        return Center(
          child: Text("Start typing to search for books",style: AppStyles.textStyle18,textAlign: TextAlign.center,),
        );
      } else if (state is SearchSuccess) {
        return ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: state.book.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: ()=>GoRouter.of(context).push(AppRouter.KBookDetails,extra: state.book[index]),
                child: CustomListNewestBook(
                  bookModel: state.book[index],
                ),
              );
            });
      } else if (state is SearchFailure) {
        return CustomError(errorMessage: state.errorMessage);
      } else {
        return CustomSimpleLoading();
      }
    });
  }
}
