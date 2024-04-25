import 'package:flutter/material.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/core/helper/router.dart';

void main() {
  runApp(const BockApp());
}

class BockApp extends StatelessWidget {
  const BockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kprimaryColor,
      ),
    );
  }
}
