import 'package:book/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBook extends StatelessWidget {
  final String rating;
  final int count;
  const RatingBook({super.key, required this.rating, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: const Color.fromARGB(255, 201, 189, 80),
          size: 16,
        ),
        const SizedBox(
          width: 9.3,
        ),
        Text(
          "${rating}",
          style: AppStyles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(${count})",
          style: AppStyles.textStyle14.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
