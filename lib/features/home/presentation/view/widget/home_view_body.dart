import 'package:book/features/home/presentation/view/widget/custom_feature_list_item.dart';
import 'package:book/features/home/presentation/view/widget/customappar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [CustomAppar(), CustomFeatureListItem()],
      ),
    );
  }
}
