import 'package:book/core/utlis/assets.dart';
import 'package:book/features/splash/presentation/view/widget/splashview/animatedbuilder.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> slidingAnimation;
  late AnimationController animationController;
  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 4), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
    // slidingAnimation.addListener((){
    //   setState(() {

    //   });
    // });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 250, child: Image.asset(AppImages.logo)),
        SizedBox(
          height: 40,
        ),
        //Text :  Read Free Book with animation
        Animatedbuilder(
          animation: animationController,
          position: slidingAnimation,
        )
      ],
    );
  }
}
