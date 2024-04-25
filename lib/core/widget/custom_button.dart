import 'package:flutter/material.dart';
import 'package:untitled1/core/helper/styles.dart';

class BookAction extends StatelessWidget {
  const BookAction({
    super.key,
    required this.backgroundColor,
    required this.outlineInputBorder,
    required this.textButton,
    this.colorTextButton,
    required this.onPressed,
  });
  final void Function() onPressed;
  final Color backgroundColor;
  final Color? colorTextButton;
  final OutlineInputBorder outlineInputBorder;
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      color: backgroundColor,
      shape: outlineInputBorder,
      onPressed: onPressed,
      child: Text(
        textButton,
        style: Styles.styles24.copyWith(
            color: colorTextButton,
            fontWeight: FontWeight.w900,
            fontFamily: 'sans'),
      ),
    );
  }
}
