import 'package:go_router/go_router.dart';
import 'package:untitled1/Fuature/home/presintaion/views/book_detailes_view.dart';
import 'package:untitled1/Fuature/home/presintaion/views/home_page.dart';
import 'package:untitled1/Fuature/home/presintaion/views/search_books_items.dart';
import 'package:untitled1/Fuature/splashview/presintaion/views/splash_view.dart';

abstract class AppRouter {
  static const String home = '/homepage';
  static const String bookdetailes = '/bookdetailes';
  static const String searchbooks = '/searchbooks';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: bookdetailes,
        builder: (context, state) => const BookdetailesView(),
      ),
      GoRoute(
        path: searchbooks,
        builder: (context, state) => const SearchBooksItemsView(),
      ),
    ],
  );
}
