import 'package:flutter/material.dart';
import 'package:untitled1/core/helper/styles.dart';

class CustomWidgetError extends StatelessWidget {
  const CustomWidgetError({super.key, required this.errMesage});
  final String errMesage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMesage,
        style: Styles.styles18,
      ),
    );
  }
}
