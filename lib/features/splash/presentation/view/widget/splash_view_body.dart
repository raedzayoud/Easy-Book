import 'package:book/core/utlis/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
        height: 250, child: Image.asset(AppImages.logo)),
        SizedBox(height: 40,),
        //Text :  Read Free Book
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.white)
          ),
          child: Text("Read Free Book",textAlign: TextAlign.center,style: TextStyle(
            fontSize: 20
          ),),
        ),
      ],
    );
  }
}
