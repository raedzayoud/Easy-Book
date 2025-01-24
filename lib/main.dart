import 'package:book/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const EasyBookApp());
}

class EasyBookApp extends StatelessWidget {
  const EasyBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
       home:  SplashView(),
    );
  }
}
