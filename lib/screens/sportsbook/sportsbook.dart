import 'package:flutter/material.dart';
import 'package:vegas_lit/models/game.dart';
import 'package:vegas_lit/screens/sportsbook/bet_button.dart';
import 'package:vegas_lit/shared/abstract_card.dart';
import 'package:vegas_lit/shared/app_bar.dart';
import 'package:vegas_lit/shared/date_formatted.dart';
import 'package:vegas_lit/style.dart';

class Sportsbook extends StatefulWidget {
  @override
  createState() => _SportsbookState();
}

class _SportsbookState extends State<StatefulWidget> {
  List<Game> games = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VegasLitAppBar(),
      body: Container(
        color: MyColors.lightGrey,
        padding: const EdgeInsets.all(5.0),
        child: ListView.builder(
          itemCount: this.games.length,
          itemBuilder: _listViewItemBuilder,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Chat button action
        },
        label: Text('Support'),
        icon: Icon(Icons.chat),
        foregroundColor: MyColors.white,
        backgroundColor: MyColors.red,
      ),
    );
  }

  loadData() async {
    // final List<Game> games = await Game.fetchAllFromApi();
    final List<Game> games = await Game.fetchAllFromMock();
    setState(() {
      this.games = games;
    });
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var game = this.games[index];

    return AbstractCard([
      Text(
        // '${game.teams.away.team} ${game.teams.away.mascot} vs ${game.teams.home.team} ${game.teams.home.mascot}',
        '${game.teams.away.mascot} vs ${game.teams.home.mascot}',
        style: MyStyles.h2,
      ),
      FormattedDate(game),
      _oddsBoard(game),
    ]);
  }

  Widget _betButtonSeparator(String text, {TextStyle style}) {
    return SizedBox(
      width: 50,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: style ?? MyStyles.h3,
      ),
    );
  }

  Widget _oddsBoard(game) {
    return Column(
      children: [
        // Team names
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                '${game.teams.away.mascot}',
                style: MyStyles.awayTeam,
                textAlign: TextAlign.center,
              ),
            ),
            _betButtonSeparator('@', style: MyStyles.h1),
            Expanded(
              child: Text(
                '${game.teams.home.mascot}',
                style: MyStyles.homeTeam,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        // Moneyline odds
        Row(
          children: [
            BetButton(
              text: '${game.odds[0].moneyline.current.awayOdds}',
            ),
            _betButtonSeparator('ML'),
            BetButton(
              text: '${game.odds[0].moneyline.current.homeOdds}',
            ),
          ],
        ),
        // SizedBox(height: 10.0),
        // Spread odds
        Row(
          children: [
            BetButton(
              text:
                  '${game.odds[0].spread.current.away}  ${game.odds[0].spread.current.awayOdds}',
            ),
            _betButtonSeparator('PTS'),
            BetButton(
              text:
                  '${game.odds[0].spread.current.home}  ${game.odds[0].spread.current.homeOdds}',
            ),
          ],
        ),
        // SizedBox(height: 10.0),
        // Total odds
        Row(
          children: [
            BetButton(
              text:
                  'o${game.odds[0].total.current.total} ${game.odds[0].total.current.overOdds}',
            ),
            _betButtonSeparator('TOT'),
            BetButton(
              text:
                  'u${game.odds[0].total.current.total} ${game.odds[0].total.current.underOdds}',
            ),
          ],
        ),
      ],
    );
  }
}
