import 'package:book/core/utlis/styles.dart';
import 'package:book/features/home/presentation/view/widget/custom_list_best_seller.dart';
import 'package:book/features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SeachViewBody extends StatelessWidget {
  const SeachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: [CustomSearchTextField(),
        SizedBox(height: 14,),
        Align(
          alignment: Alignment.topLeft,
          child: Text("Search Result ",style: AppStyles.textStyle18,)),
        
        Expanded(child: SearchResultView())],
      ),
    );
  }
}

class SearchResultView extends StatelessWidget {
  const SearchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: CustomListNewestBook(),
      );
    });
  }
}
