import 'package:auto_route/auto_route.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:vegas_lit/provider/navigation_bloc.dart';
import 'package:vegas_lit/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegas_lit/style.dart';

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = context.bloc<NavigationBloc>();

    return BlocBuilder<NavigationBloc, int>(
      cubit: bloc,
      builder: (context, state) {
        return WillPopScope(
          onWillPop: bloc.onWillPop,
          child: Container(
            color: MyColors.darkGrey,
            child: SafeArea(
              child: Scaffold(
                body: IndexedStack(
                  index: state,
                  children: List.generate(bloc.tabs.length, (index) {
                    final tab = bloc.tabs[index];

                    return TickerMode(
                      enabled: index == state,
                      child: Offstage(
                        offstage: index != state,
                        child: ExtendedNavigator(
                          initialRoute: tab.initialRoute,
                          name: tab.name,
                          router: AppRouter(),
                        ),
                      ),
                    );
                  }),
                ),
                bottomNavigationBar: _buildCustomNavigationBar(bloc, state),
              ),
            ),
          ),
        );
      },
    );
  }

  _buildBottomNavigationBar(NavigationBloc bloc, int state) {
    return BottomNavigationBar(
      elevation: 0.0,
      iconSize: 30.0,
      unselectedItemColor: MyColors.white,
      selectedItemColor: MyColors.green,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      onTap: bloc.add,
      currentIndex: state,
      items: bloc.tabs.map((tab) {
        return BottomNavigationBarItem(
          icon: Icon(tab.icon),
          label: tab.name,
        );
      }).toList(),
    );
  }

  _buildCustomNavigationBar(NavigationBloc bloc, int state) {
    return CustomNavigationBar(
      elevation: 0.0,
      iconSize: 30.0,
      strokeColor: MyColors.white,
      unSelectedColor: MyColors.white,
      selectedColor: MyColors.green,
      backgroundColor: MyColors.darkGrey,
      onTap: bloc.add,
      currentIndex: state,
      items: bloc.tabs.map((tab) {
        return CustomNavigationBarItem(
          badgeCount: 0,
          showBadge: false,
          icon: tab.icon,
        );
      }).toList(),
    );
  }
}
