import 'package:book/core/utlis/service_locator.dart';
import 'package:book/features/home/data/model/book_model/book_model.dart';
import 'package:book/features/home/data/repos/home_repo_impl.dart';
import 'package:book/features/home/presentation/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:book/features/home/presentation/view/book_details_view.dart';
import 'package:book/features/home/presentation/view/home_view.dart';
import 'package:book/features/search/presentation/view/search_view.dart';
import 'package:book/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String KHomeview = '/homeview';
  static String KBookDetails = '/bookdetails';
  static String KSearchView = '/searchview';

  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: KHomeview,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: KBookDetails,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBookCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(bookModel: state.extra as BookModel,),
        ),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
