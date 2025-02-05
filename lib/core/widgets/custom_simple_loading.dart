import 'package:flutter/material.dart';

class CustomSimpleLoading extends StatelessWidget {
  const CustomSimpleLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(color: Colors.blue,),);
  }
}