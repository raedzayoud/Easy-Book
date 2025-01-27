
import 'package:book/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,),
        const SizedBox(width: 6.3,),
        Text("4.8",style: AppStyles.textStyle16,),
        const SizedBox(width: 5,),
        Text("(2456)",style: AppStyles.textStyle14.copyWith(
          color: Colors.grey
        ),)
      ],
    );
  }
}
