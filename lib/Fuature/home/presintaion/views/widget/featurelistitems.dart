import 'package:flutter/material.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/book_items.dart';

class FeatureBookListItems extends StatelessWidget {
  const FeatureBookListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookItems(),
      ),
    );
  }
}
