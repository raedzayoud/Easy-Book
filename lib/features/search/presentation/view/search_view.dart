import 'package:book/core/utlis/service_locator.dart';
import 'package:book/features/home/data/repos/home_repo_impl.dart';
import 'package:book/features/search/data/repos/search_repo_impl.dart';
import 'package:book/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:book/features/search/presentation/view/widgets/seach_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(getIt.get<SearchRepoImpl>()),
      child: Scaffold(
        body: SafeArea(child: SeachViewBody()),
      ),
    );
  }
}
