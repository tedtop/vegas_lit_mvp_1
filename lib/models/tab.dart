import 'package:flutter/material.dart';

@immutable
class NavigationTab {
  const NavigationTab({
    this.name,
    this.icon,
    this.initialRoute,
  });

  final String name;
  final IconData icon;
  final String initialRoute;
}
