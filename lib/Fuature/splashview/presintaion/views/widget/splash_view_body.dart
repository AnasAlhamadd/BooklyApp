import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/Fuature/splashview/presintaion/views/widget/sliding_animation.dart';
import 'package:untitled1/core/helper/app_assets.dart';
import 'package:untitled1/core/helper/router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    initSlidingAnimation();
    navigatehomePage();
    super.initState();
  }

  void navigatehomePage() {
    Future.delayed(const Duration(seconds: 2), () {
      return context.go(AppRouter.books);
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation = Tween(begin: const Offset(0, 3), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(AppAssets.klogoPage),
          ),
          SlidingAnimation(animation: animation)
        ],
      ),
    );
  }
}
