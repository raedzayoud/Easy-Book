import 'package:book/features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:book/features/search/presentation/view/widgets/search_result_view.dart';
import 'package:flutter/material.dart';

class SeachViewBody extends StatelessWidget {
  const SeachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController=TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: [CustomSearchTextField(controller: searchController,),
        SizedBox(height: 14,),
        Expanded(child: SearchResultView())],
      ),
    );
  }
}
