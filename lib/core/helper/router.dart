import 'package:go_router/go_router.dart';
import 'package:untitled1/Fuature/home/presintaion/views/book_detailes_view.dart';
import 'package:untitled1/Fuature/home/presintaion/views/home_page.dart';
import 'package:untitled1/Fuature/splashview/presintaion/views/widget/splash_view_body.dart';

abstract class AppRouter {
  static const String home = '/homepage';

  static const String bookdetailes = '/bookdetailes';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashViewBody(),
      ),
      GoRoute(
        path: '/homepage',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/bookdetailes',
        builder: (context, state) => const BookdetailesView(),
      ),
    ],
  );
}
