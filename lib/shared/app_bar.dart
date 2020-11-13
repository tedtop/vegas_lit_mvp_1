import 'package:flutter/material.dart';
import 'package:vegas_lit/style.dart';

Widget header() {
  return AppBar(
    title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Image.asset(
          'assets/images/logo_top.png',
          fit: BoxFit.contain,
          height: 80,
        ),
      ),
    ]),
    backgroundColor: MyColors.darkGrey,
  );
}
