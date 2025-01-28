
import 'package:book/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class BottomBookDetails extends StatelessWidget {
  const BottomBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "You can also like ",
            style: AppStyles.textStyle14.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
