
import 'package:book/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(FontAwesomeIcons.solidStar,color: const Color.fromARGB(255, 201, 189, 80),size: 16,),
        const SizedBox(width: 9.3,),
        Text("4.8",style: AppStyles.textStyle16,),
        const SizedBox(width: 5,),
        Text("(2456)",style: AppStyles.textStyle14.copyWith(
          color: Colors.grey
        ),)
      ],
    );
  }
}
