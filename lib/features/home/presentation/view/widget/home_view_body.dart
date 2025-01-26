import 'package:book/core/utlis/assets.dart';
import 'package:book/core/utlis/styles.dart';
import 'package:book/features/home/presentation/view/widget/custom_feature_list_item.dart';
import 'package:book/features/home/presentation/view/widget/customappar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppar(),
            CustomFeatureListItem(),
            Text(
              "Best Seller",
              style: AppStyles.textStyle18,
            ),
            CustomListBestSeller()
          ],
        ),
      ),
    );
  }
}

class CustomListBestSeller extends StatelessWidget {
  const CustomListBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
      child: SizedBox(
        height: 150,
        child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: Container(
            decoration: const BoxDecoration(
                //color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(AppImages.testimage))),
          ),
        ),
      ),
    );
  }
}
