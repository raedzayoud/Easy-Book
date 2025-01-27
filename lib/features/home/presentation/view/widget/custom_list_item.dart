
import 'package:book/features/home/presentation/view/widget/custom_list_best_seller.dart';
import 'package:flutter/material.dart';

class CustomListItems extends StatelessWidget {
  const CustomListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return CustomListBestSeller();
        });
  }
}
