import 'package:auto_route/auto_route_annotations.dart';
import 'package:vegas_lit/screens/bet_history/bet_history.dart';
import 'package:vegas_lit/screens/bet_slip/bet_slip.dart';
import 'package:vegas_lit/screens/leaderboard/leaderboard.dart';
import 'package:vegas_lit/screens/open_bets/open_bets.dart';
import 'package:vegas_lit/screens/sportsbook/sportsbook.dart';

import 'package:vegas_lit/screens/root.dart';

export 'router.gr.dart';

/// All routes are defined in this single router.
///
/// Do NOT specify `initial` to true for any of these routes if you want to
/// reuse this router for nested navigation (as in this example).
///
/// You will declare `initialRoute` in each `ExtendedNavigator` accordingly.
@MaterialAutoRouter(
  routes: [
    MaterialRoute<void>(path: "/", page: Root),
    MaterialRoute<void>(path: "/sportsbook", page: Sportsbook),
    MaterialRoute<void>(path: "/bets/slip", page: BetSlip),
    MaterialRoute<void>(path: "/leaderboard", page: Leaderboard),
    MaterialRoute<void>(path: "/bets/open", page: OpenBets),
    MaterialRoute<void>(path: "/bets/history", page: BetHistory)
  ],
)
class $AppRouter {}
