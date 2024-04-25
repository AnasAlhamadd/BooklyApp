import 'package:flutter/cupertino.dart';

class SlidingAnimation extends StatelessWidget {
  const SlidingAnimation({super.key, required this.animation});
  final Animation<Offset> animation;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation,
        builder: (context, _) {
          return SlideTransition(
            position: animation,
            child: const Text(
              'Read For Free Bocks',
            ),
          );
        });
  }
}
