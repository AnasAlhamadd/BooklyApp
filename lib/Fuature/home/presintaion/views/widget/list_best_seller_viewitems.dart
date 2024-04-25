import 'package:flutter/material.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/best_seller_viewitems.dart';

class ListBestSelleViewItems extends StatelessWidget {
  const ListBestSelleViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: BestSelleViewItems(),
      ),
    );
  }
}
