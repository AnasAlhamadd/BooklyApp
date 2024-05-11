import 'package:flutter/material.dart';

void showsnackbar(context, String url) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('No Url Found $url'),
    ),
  );
}
