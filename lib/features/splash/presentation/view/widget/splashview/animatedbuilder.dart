import 'package:flutter/material.dart';

class Animatedbuilder extends StatelessWidget {
  final Listenable animation;
  final Animation<Offset> position;
  const Animatedbuilder(
      {super.key, required this.animation, required this.position});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) => SlideTransition(
        position: position,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: Colors.white)),
          child: Text(
            "Read Free Book",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
