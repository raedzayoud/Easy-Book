import 'package:book/features/home/presentation/view/book_details_view.dart';
import 'package:book/features/home/presentation/view/home_view.dart';
import 'package:book/features/search/presentation/view/search_view.dart';
import 'package:book/features/search/presentation/view/widgets/seach_view_body.dart';
import 'package:book/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{

 static String KHomeview='/homeview' ;
 static String KBookDetails='/bookdetails' ;
 static String KSearchView='/searchview' ;

 static GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path:KHomeview ,
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path:KBookDetails ,
      builder: (context, state) => BookDetailsView(),
    ),
    GoRoute(
      path:KSearchView ,
      builder: (context, state) => SearchView(),
    ),
  ],
);

}