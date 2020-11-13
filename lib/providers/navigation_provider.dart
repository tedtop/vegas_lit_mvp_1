import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vegas_lit/screens/bet_history/bet_history.dart';
import 'package:vegas_lit/screens/bet_slip/bet_slip.dart';
import 'package:vegas_lit/screens/leaderboard/leaderboard.dart';
import 'package:vegas_lit/screens/open_bets/open_bets.dart';
import 'package:vegas_lit/screens/root.dart';
import 'package:vegas_lit/screens/sportsbook/sportsbook.dart';
import 'package:vegas_lit/models/screen.dart';

class NavigationProvider extends ChangeNotifier {
  int _currentScreenIndex = FIFTH_SCREEN;
  int get currentTabIndex => _currentScreenIndex;
  List<Screen> get screens => _screens.values.toList();
  Screen get currentScreen => _screens[_currentScreenIndex];

  static const FIRST_SCREEN = 0;
  static const SECOND_SCREEN = 1;
  static const THIRD_SCREEN = 2;
  static const FOURTH_SCREEN = 3;
  static const FIFTH_SCREEN = 4;

  final Map<int, Screen> _screens = {
    FIRST_SCREEN: Screen(
      title: 'Sportsbook',
      child: Sportsbook(),
      initialRoute: Sportsbook.route,
      navigatorState: GlobalKey<NavigatorState>(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case BetSlip.route:
            return MaterialPageRoute(builder: (_) => BetSlip());
          default:
            return MaterialPageRoute(builder: (_) => Sportsbook());
        }
      },
      scrollController: ScrollController(),
    ),
    SECOND_SCREEN: Screen(
      title: 'Bet Slip',
      child: BetSlip(),
      initialRoute: BetSlip.route,
      navigatorState: GlobalKey<NavigatorState>(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          default:
            return MaterialPageRoute(builder: (_) => BetSlip());
        }
      },
      scrollController: ScrollController(),
    ),
    THIRD_SCREEN: Screen(
      title: 'Leaderboard',
      child: Leaderboard(),
      initialRoute: Leaderboard.route,
      navigatorState: GlobalKey<NavigatorState>(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          default:
            return MaterialPageRoute(builder: (_) => Leaderboard());
        }
      },
      scrollController: ScrollController(),
    ),
    FOURTH_SCREEN: Screen(
      title: 'Open Bets',
      child: OpenBets(),
      initialRoute: OpenBets.route,
      navigatorState: GlobalKey<NavigatorState>(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          default:
            return MaterialPageRoute(builder: (_) => OpenBets());
        }
      },
      scrollController: ScrollController(),
    ),
    FIFTH_SCREEN: Screen(
      title: 'Bet History',
      child: BetHistory(),
      initialRoute: BetHistory.route,
      navigatorState: GlobalKey<NavigatorState>(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          default:
            return MaterialPageRoute(builder: (_) => BetHistory());
        }
      },
      scrollController: ScrollController(),
    ),
  };

  void setTab(int tab) {
    if (tab == currentTabIndex) {
      // TODO: Scroll to start.
    } else {
      _currentScreenIndex = tab;
      notifyListeners();
    }
  }

  // Handle Android back buttom
  static NavigationProvider of(BuildContext context) =>
      Provider.of<NavigationProvider>(context, listen: false);

  Future<bool> onWillPop() async {
    final currentNavigatorState = currentScreen.navigatorState.currentState;

    if (currentNavigatorState.canPop()) {
      currentNavigatorState.pop();
      return false;
    } else {
      if (currentTabIndex != FIRST_SCREEN) {
        setTab(FIRST_SCREEN);
        notifyListeners();
        return false;
      } else {
        return true;
      }
    }
  }

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    print('Generating route: ${settings.name}');
    switch (settings.name) {
      case BetSlip.route:
        return MaterialPageRoute(builder: (_) => BetSlip());
      default:
        return MaterialPageRoute(builder: (_) => Root());
    }
  }
}
