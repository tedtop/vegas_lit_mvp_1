import 'package:flutter/material.dart';
import 'package:vegas_lit/style.dart';

Widget header() {
  return AppBar(
    toolbarHeight: 80,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/logo_top.png',
          fit: BoxFit.contain,
          height: 80,
        ),
      ],
    ),
  );
}
