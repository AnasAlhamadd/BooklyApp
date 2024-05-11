import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/Fuature/books/data/repo/books_repo_implement.dart';
import 'package:untitled1/Fuature/books/presintaion/manager/feature_books/featuer_books_cubit.dart';
import 'package:untitled1/Fuature/books/presintaion/manager/feature_newest_books.dart/feature_newest_books_cubit.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/core/helper/router.dart';
import 'package:untitled1/core/helper/services_locator.dart';
import 'package:untitled1/simple_bloc_observer.dart';

void main() {
  setupServiceLocator();
  Bloc.observer = SimpleBlocObserver();
  runApp(const BockApp());
}

class BockApp extends StatelessWidget {
  const BockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FeatuerBooksCubit(getit.get<HomeRepoImplement>())
                  ..featchFeatureBooks()),
        BlocProvider(
            create: (context) => FeatureNewestBooksCubit(
                  getit.get<HomeRepoImplement>(),
                )..featchNewestBooks()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimaryColor,
        ),
      ),
    );
  }
}
