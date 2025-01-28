
import 'package:flutter/material.dart';

class CustomApparBookDetails extends StatelessWidget {
  const CustomApparBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.close),
        ),
        Spacer(),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
      ],
    );
  }
}
