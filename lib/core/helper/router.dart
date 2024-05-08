import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/Fuature/home/data/model/bookmodel/item.dart';
import 'package:untitled1/Fuature/home/data/repo/home_repo_implement.dart';
import 'package:untitled1/Fuature/home/presintaion/manager/feature_similler_books_items.dart/similler_boks_items_cubit.dart';
import 'package:untitled1/Fuature/home/presintaion/views/book_detailes_view.dart';
import 'package:untitled1/Fuature/home/presintaion/views/home_page.dart';
import 'package:untitled1/Fuature/home/presintaion/views/search_books_items.dart';
import 'package:untitled1/Fuature/splashview/presintaion/views/splash_view.dart';
import 'package:untitled1/core/helper/services_locator.dart';

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
        builder: (context, state) => BlocProvider(
          create: (context) => SimillerBoksItemsCubit(
            getit.get<HomeRepoImplement>(),
          ),
          child: BookdetailesView(
            item: state.extra as Item,
          ),
        ),
      ),
      GoRoute(
        path: searchbooks,
        builder: (context, state) => const SearchBooksItemsView(),
      ),
    ],
  );
}
