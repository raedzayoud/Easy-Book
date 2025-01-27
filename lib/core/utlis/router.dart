import 'package:book/features/home/presentation/view/home_view.dart';
import 'package:book/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{

 static String KHomeview='/homeview' ;

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
  ],
);

}