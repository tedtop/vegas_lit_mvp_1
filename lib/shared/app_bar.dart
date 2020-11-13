import 'package:flutter/material.dart';

class VegasLitAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80.0,
      title: Image.asset(
        'assets/images/logo_top.png',
        fit: BoxFit.contain,
        height: 80,
      ),
    );
  }
}
