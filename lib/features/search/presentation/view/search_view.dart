import 'package:book/features/search/presentation/view/widgets/seach_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SeachViewBody()),
    );
  }
}