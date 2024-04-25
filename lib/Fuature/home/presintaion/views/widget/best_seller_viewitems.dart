import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/book_items.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/priceandrating_book.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/core/helper/router.dart';
import 'package:untitled1/core/helper/styles.dart';

class BestSelleViewItems extends StatelessWidget {
  const BestSelleViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRouter.bookdetailes);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            const CustomBookItems(),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      'Harry potter and the goblet of fire',
                      style: Styles.styles24.copyWith(
                        fontFamily: kFontfamily,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text('jk_roaling',
                      style: Styles.styles16.copyWith(fontFamily: kFontfamily)),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          '19.99€',
                          style:
                              Styles.styles18.copyWith(fontFamily: kFontfamily),
                        ),
                        const Spacer(),
                        const CustomRatingBook(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
