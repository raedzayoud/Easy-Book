import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomloadingIndicatornewsetBooks extends StatelessWidget {
  const CustomloadingIndicatornewsetBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Row(
        children: const [
          Expanded(child: SkeletonNewestBook()),
          SizedBox(width: 10), // Spacing between items
          Expanded(child: ShimmerText()),
        ],
      ),
    );
  }
}

class SkeletonNewestBook extends StatelessWidget {
  const SkeletonNewestBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color(0xFFE0E0E0), // Light grey (background)
      highlightColor: const Color(0xFFF5F5F5), // Slightly lighter grey
      child: Padding(
        padding: const EdgeInsets.only(bottom: 7, right: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.25, // Adjusted height
            width: double.infinity, // Takes full width of Expanded
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ShimmerText extends StatelessWidget {
  const ShimmerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color(0xFFE0E0E0), 
      highlightColor: const Color(0xFFF5F5F5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width * 0.5,
            height: 20, // Simulating text line height
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: 15, // Simulating a second line of text
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: 15,
                color: Colors.white,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: 15,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
