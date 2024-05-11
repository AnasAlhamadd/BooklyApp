import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/constant.dart';

class CustomSearchTextFailed extends StatelessWidget {
  const CustomSearchTextFailed({super.key, required this.onSubmitted});
  final Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kdefaultPadding),
      child: TextField(
        onSubmitted: onSubmitted,
        decoration: const InputDecoration(
            prefixIcon: Icon(
              FontAwesomeIcons.magnifyingGlass,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            )),
      ),
    );
  }
}
