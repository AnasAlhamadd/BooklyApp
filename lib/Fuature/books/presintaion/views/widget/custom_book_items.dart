import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookItems extends StatelessWidget {
  const CustomBookItems({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(18.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: AspectRatio(
            aspectRatio: 2.4 / 4,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
