import 'package:book/core/utlis/router.dart';
import 'package:book/core/utlis/styles.dart';
import 'package:book/features/home/presentation/view/widget/custom_feature_list_item.dart';
import 'package:book/features/home/presentation/view/widget/custom_list_best_seller.dart';
import 'package:book/features/home/presentation/view/widget/custom_list_item.dart';
import 'package:book/features/home/presentation/view/widget/customappar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          GoRouter.of(context).push(AppRouter.KBookDetails);
        },
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppar(),
                    CustomFeatureListItem(),
                    SizedBox(height: 10,),
                    Text(
                      "Newest Books",
                      style: AppStyles.textStyle18,
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomListItems(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
