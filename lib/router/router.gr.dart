// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/bet_history/bet_history.dart';
import '../screens/bet_slip/bet_slip.dart';
import '../screens/leaderboard/leaderboard.dart';
import '../screens/open_bets/open_bets.dart';
import '../screens/root.dart';
import '../screens/sportsbook/sportsbook.dart';

class Routes {
  static const String root = '/Root';
  static const String sportsbook = '/Sportsbook';
  static const String betSlip = '/bet-slip';
  static const String leaderboard = '/Leaderboard';
  static const String openBets = '/open-bets';
  static const String betHistory = '/bet-history';
  static const all = <String>{
    root,
    sportsbook,
    betSlip,
    leaderboard,
    openBets,
    betHistory,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.root, page: Root),
    RouteDef(Routes.sportsbook, page: Sportsbook),
    RouteDef(Routes.betSlip, page: BetSlip),
    RouteDef(Routes.leaderboard, page: Leaderboard),
    RouteDef(Routes.openBets, page: OpenBets),
    RouteDef(Routes.betHistory, page: BetHistory),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    Root: (data) {
      return MaterialPageRoute<void>(
        builder: (context) => Root(),
        settings: data,
      );
    },
    Sportsbook: (data) {
      return MaterialPageRoute<void>(
        builder: (context) => Sportsbook(),
        settings: data,
      );
    },
    BetSlip: (data) {
      return MaterialPageRoute<void>(
        builder: (context) => BetSlip(),
        settings: data,
      );
    },
    Leaderboard: (data) {
      return MaterialPageRoute<void>(
        builder: (context) => Leaderboard(),
        settings: data,
      );
    },
    OpenBets: (data) {
      return MaterialPageRoute<void>(
        builder: (context) => OpenBets(),
        settings: data,
      );
    },
    BetHistory: (data) {
      return MaterialPageRoute<void>(
        builder: (context) => BetHistory(),
        settings: data,
      );
    },
  };
}
