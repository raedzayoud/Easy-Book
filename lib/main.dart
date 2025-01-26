import 'package:book/constant.dart';
import 'package:book/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const EasyBookApp());
}
class EasyBookApp extends StatelessWidget {
  const EasyBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: KPrimaryColor,
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),
      home: SplashView(),
    );
  }
}
