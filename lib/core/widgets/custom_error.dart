import 'package:book/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  final String errorMessage;
  const CustomError({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage,
      style: AppStyles.textStyle20,
    );
  }
}
