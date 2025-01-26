import 'package:book/features/home/presentation/view/widget/custom_list_item.dart';
import 'package:flutter/material.dart';

class CustomFeatureListItem extends StatelessWidget {
  const CustomFeatureListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return CustomListItem();
          }),
    );
  }
}
