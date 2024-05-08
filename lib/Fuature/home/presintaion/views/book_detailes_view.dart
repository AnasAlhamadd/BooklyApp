import 'package:flutter/material.dart';
import 'package:untitled1/Fuature/home/data/model/bookmodel/item.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/book_detailes_view_body.dart';

class BookdetailesView extends StatelessWidget {
  const BookdetailesView({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookdetailesViewBody(
          item: item,
        ),
      ),
    );
  }
}
