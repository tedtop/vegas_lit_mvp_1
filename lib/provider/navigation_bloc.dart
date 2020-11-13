import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:vegas_lit/models/tab.dart';
import 'package:vegas_lit/router/router.dart';

class NavigationBloc extends Bloc<int, int> {
  NavigationBloc() : super(NavigationTabs.first);

  @override
  Stream<int> mapEventToState(int event) async* {
    yield event;
  }

  final tabs = const <NavigationTab>[
    NavigationTab(
      name: 'Sportsbook',
      icon: Feather.home,
      initialRoute: Routes.sportsbook,
    ),
    NavigationTab(
      name: 'Bet Slip',
      icon: Feather.file_plus,
      initialRoute: Routes.betSlip,
    ),
    NavigationTab(
      name: 'Leaderboard',
      icon: Feather.globe,
      initialRoute: Routes.leaderboard,
    ),
    NavigationTab(
      name: 'Open Bets',
      icon: Feather.file_text,
      initialRoute: Routes.openBets,
    ),
    NavigationTab(
      name: 'Bet History',
      icon: Feather.calendar,
      initialRoute: Routes.betHistory,
    ),
  ];

  Future<bool> onWillPop() async {
    final currentNavigatorState = ExtendedNavigator.named(tabs[state].name);

    if (currentNavigatorState.canPop()) {
      currentNavigatorState.pop();
    } else {
      if (state == NavigationTabs.first) {
        return true;
      } else {
        add(NavigationTabs.first);
      }
    }

    return false;
  }
}

class NavigationTabs {
  /// Default constructor is private because this class will be only used for
  /// static fields and you should not instantiate it.
  NavigationTabs._();

  static const first = 0;
  static const second = 1;
  static const third = 2;
  static const fourth = 3;
  static const fifth = 4;
}
