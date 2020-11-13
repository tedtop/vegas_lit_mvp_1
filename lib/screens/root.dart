import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vegas_lit/providers/navigation_provider.dart';
import 'package:vegas_lit/style.dart';

class Root extends StatelessWidget {
  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
      builder: (context, provider, child) {
        final bottomNavigationBarItems = provider.screens
            .map((screen) => CustomNavigationBarItem(icon: Icons.home));

        final bottomNavigationBarItemsList = List<CustomNavigationBarItem>();
        bottomNavigationBarItems
            .forEach((element) => bottomNavigationBarItemsList.add(element));

        final screens = provider.screens
            .map(
              (screen) => Offstage(
                offstage: screen != provider.currentScreen,
                child: Navigator(
                  key: screen.navigatorState,
                  onGenerateRoute: screen.onGenerateRoute,
                ),
              ),
            )
            .toList();

        return WillPopScope(
          onWillPop: provider.onWillPop,
          child: Scaffold(
            body: IndexedStack(
              children: screens,
              index: provider.currentTabIndex,
            ),
            bottomNavigationBar: CustomNavigationBar(
              iconSize: 30.0,
              selectedColor: MyColors.white,
              strokeColor: MyColors.white,
              unSelectedColor: MyColors.white,
              backgroundColor: MyColors.darkGrey,
              borderRadius: Radius.circular(6.0),
              isFloating: true,
              items: bottomNavigationBarItemsList,
              currentIndex: provider.currentTabIndex,
              onTap: provider.setTab,
            ),
          ),
        );
      },
    );
  }
}
