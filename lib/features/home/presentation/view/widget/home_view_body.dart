import 'package:book/core/utlis/styles.dart';
import 'package:book/features/home/presentation/view/widget/custom_feature_list_item.dart';
import 'package:book/features/home/presentation/view/widget/custom_list_best_seller.dart';
import 'package:book/features/home/presentation/view/widget/customappar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppar(),
            CustomFeatureListItem(),
            Text(
              "Best Seller",
              style: AppStyles.textStyle18,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListItems(),
          ],
        ),
      ),
    );
  }
}

class CustomListItems extends StatelessWidget {
  const CustomListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return CustomListBestSeller();
          }),
    );
  }
}
