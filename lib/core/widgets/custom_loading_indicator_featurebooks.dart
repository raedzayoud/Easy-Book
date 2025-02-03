import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingIndicatorFeatureBooks extends StatelessWidget {
  const CustomLoadingIndicatorFeatureBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Row(
        children: [
          Expanded(child: Skeleton()),
          SizedBox(width: 10,),
          Expanded(child: Skeleton()),
        ],
      ),
    );
  }
}

class Skeleton extends StatelessWidget {
  const Skeleton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color(0xFFE0E0E0), // Light grey (background)
      highlightColor:
          const Color(0xFFF5F5F5), // Slightly lighter grey (shimmer)
      child: Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.9 / 4,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white
            ),
          )
        ),
      ),)
    );
  }
}
