import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/Fuature/books/data/model/bookmodel/item.dart';
import 'package:untitled1/Fuature/books/data/repo/books_repo_implement.dart';
import 'package:untitled1/Fuature/search/data/repo/search_repo_imp.dart';
import 'package:untitled1/Fuature/search/prisintaion/manager/feature_search_book/search_book_cubit.dart';
import 'package:untitled1/Fuature/books/presintaion/manager/feature_similler_books_items.dart/similler_boks_items_cubit.dart';
import 'package:untitled1/Fuature/books/presintaion/views/book_detailes_view.dart';
import 'package:untitled1/Fuature/books/presintaion/views/books_view.dart';
import 'package:untitled1/Fuature/search/prisintaion/views/search_books_items.dart';
import 'package:untitled1/Fuature/splashview/presintaion/views/splash_view.dart';
import 'package:untitled1/core/helper/services_locator.dart';

abstract class AppRouter {
  static const String books = '/books';
  static const String bookdetailes = '/bookdetailes';
  static const String searchbooks = '/searchbooks';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: books,
        builder: (context, state) => const Books(),
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
        builder: (context, state) => BlocProvider(
          create: (context) => SearchBookCubit(
            getit.get<SearchRepoImp>(),
          ),
          child: const SearchBooksItemsView(),
        ),
      ),
    ],
  );
}
