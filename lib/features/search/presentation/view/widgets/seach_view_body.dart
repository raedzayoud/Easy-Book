import 'package:book/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:book/features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:book/features/search/presentation/view/widgets/search_result_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeachViewBody extends StatelessWidget {
  const SeachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: ListView(
        children: [
          CustomSearchTextField(
            controller: searchController,
            onChanged: (val) {
              BlocProvider.of<SearchCubit>(context).checkInputSearch(val);
            },
          ),
          SizedBox(
            height: 14,
          ),
          SearchResultView()
        ],
      ),
    );
  }
}
