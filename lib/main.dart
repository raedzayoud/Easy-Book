import 'package:book/constant.dart';
import 'package:book/core/utlis/apiservice.dart';
import 'package:book/core/utlis/router.dart';
import 'package:book/core/utlis/service_locator.dart';
import 'package:book/features/home/data/repos/home_repo.dart';
import 'package:book/features/home/data/repos/home_repo_impl.dart';
import 'package:book/features/home/presentation/manager/feature_books_cubit/feature_books_cubit.dart';
import 'package:book/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUp();
  runApp(const EasyBookApp());
}

class EasyBookApp extends StatelessWidget {
  const EasyBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeatureBooksCubit(getIt.get<HomeRepoImpl>())),
        BlocProvider(
            create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: KPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
