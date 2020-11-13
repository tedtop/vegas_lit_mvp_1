import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../style.dart';

Widget floatingNavBar() {
  return CustomNavigationBar(
    iconSize: 30.0,
    selectedColor: MyColors.white,
    strokeColor: MyColors.white,
    unSelectedColor: MyColors.white,
    backgroundColor: MyColors.darkGrey,
    borderRadius: Radius.circular(6.0),
    items: [
      CustomNavigationBarItem(
        icon: Feather.home,
      ),
      CustomNavigationBarItem(
        icon: Feather.file_plus,
      ),
      CustomNavigationBarItem(
        icon: Feather.globe,
      ),
      CustomNavigationBarItem(
        icon: Feather.file_text,
      ),
      CustomNavigationBarItem(
        icon: Feather.calendar,
      ),
    ],
    isFloating: true,
  );
}
