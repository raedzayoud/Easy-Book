
import 'package:book/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  const BookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButton(
          backgroundColor: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12), topLeft: Radius.circular(12)),
          textColor: Colors.black,text: "19.99 £",fontSize: 15,
        )),
        Expanded(
            child: CustomButton(
          backgroundColor: Color(0xFFEF8262),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(12), topRight: Radius.circular(12)),
          textColor: Colors.white,text: "Free Preview ",fontSize: 15,
        )),
      ],
    );
  }
}
